from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.metrics import dp
import webview
from kivymd.app import MDApp
from kivymd.uix.pickers import MDDockedDatePicker
from KivyMD.kivymd.uix.snackbar import MDSnackbar, MDSnackbarSupportingText, MDSnackbarText, MDSnackbarButtonContainer, \
    MDSnackbarActionButton, MDSnackbarActionButtonText
import psycopg2
from psycopg2.extras import NamedTupleCursor
import requests
from kivy.metrics import dp


class RegisterScreen(Screen):
    pass
class MainScreen(Screen):
    pass

class MapScreen(Screen):
    pass

class WeatherScreen(Screen):
    def get_city_id(self, s_city_name):
        city_id = 0
        try:
            res = requests.get("http://api.openweathermap.org/data/2.5/find",
                               params={'q': s_city_name, 'type': 'like', 'units': 'metric', 'lang': 'ru',
                                       'APPID': "2b7382bcf96880be18e9dc1be22b5287"})
            data = res.json()
            cities = ["{} ({})".format(d['name'], d['sys']['country'])
                      for d in data['list']]
            # print("city:", cities)
            city_id = data['list'][0]['id']
            # print('city_id=', city_id)
        except Exception as e:
            print("Exception (find):", e)
            pass
        assert city_id != 0
        return city_id

    def request_forecast(self, city_id, time, t):
        try:
            res = requests.get("http://api.openweathermap.org/data/2.5/forecast",
                               params={'id': city_id, 'units': 'metric', 'lang': 'ru', 'APPID':  "2b7382bcf96880be18e9dc1be22b5287",
                                       'dt': '2024-03-30'})
            data = res.json()
            for i in data['list']:
                if (i['dt_txt'][:10] == time and i['dt_txt'][11:16] == t):
                    print((i['dt_txt']), i['weather'][0]['description'], i['main']['temp'])
                    return i['main']['temp'], i['weather'][0]['description']
        except Exception as e:
            print("Exception (forecast):", e)
            pass

    def recomendation_from_db(self, temperature, description, ind):
        try:
            # пытаемся подключиться к базе данных
            conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                    port='5432', options='-c search_path=project_db')
            conn.autocommit = True
            cursor = conn.cursor(cursor_factory=NamedTupleCursor)
            temp = (round(temperature),)
            print(temp)
            desc = (description,)
            print(desc)
            cursor.execute('SELECT * FROM weather_recommend WHERE temp=(%s) AND description=(%s) AND ind=(%s)',
                           (temp, desc, ind))
            recomendation = cursor.fetchall()[0][3]
            cursor.close()  # закрываем курсор
            conn.close()  # закрываем подключение
            return recomendation
        except Exception as e:
            print('Can`t establish connection to database', e)

    def get_time(self, date):
        date_string = date[0].strftime("%Y-%m-%d")
        return date_string


    def get_weather(self, date):
        s_city_name = "Saint Petersburg, Ru"
        city_id = self.get_city_id(s_city_name)
        mass_weather = []
        for i in range(1, 4):
            #проёб: нельзя смотреть прогноз на сегодняшний день позже 09:00, так как погода смотрит только прогноз на будущее :)
            if i == 1:
                mass = self.request_forecast(city_id, time=self.get_time(date), t="09:00")
                recomendation = self.recomendation_from_db(temperature=mass[0], description=mass[1], ind=1)
                mass_weather.append([recomendation, mass[0]])
            if i == 2:
                mass = self.request_forecast(city_id, time=self.get_time(date), t="15:00")
                recomendation = self.recomendation_from_db(temperature=mass[0], description=mass[1], ind=2)
                mass_weather.append([recomendation, mass[0]])
            if i == 3:
                mass = self.request_forecast(city_id, time=self.get_time(date), t="21:00")
                recomendation = self.recomendation_from_db(temperature=mass[0], description=mass[1], ind=3)
                mass_weather.append([recomendation, mass[0]])
        print(mass_weather)
        return mass_weather
    def on_snackbar_action(self, instance, value):
        if value:
            instance.dismiss()

    def on_ok(self, instance_date_picker):
        instance_date_picker.dismiss()
        recomend = self.get_weather(instance_date_picker.get_date())
        desc_9 = str(recomend[0][0])
        temp = str(recomend[1][1])
        desc_15 = str(recomend[1][0])
        desc_21 = str(recomend[2][0])

        snackbar = MDSnackbar(
            MDSnackbarText(
                text="на дату " + "".join(str(date) for date in instance_date_picker.get_date()) + "\n" + "температура будет около " + temp,
            ),
            MDSnackbarSupportingText(
                text="9:00 -- " + desc_9 + "\n" + "15:00 -- " +  desc_15 + "\n" + "21:00 -- " + desc_21,
                padding=[0, 0, 0, dp(12)],
            ),
            MDSnackbarButtonContainer(
                MDSnackbarActionButton(
                    MDSnackbarActionButtonText(
                        text="ok",
                        pos_hint={"center_y": 0.60}
                    ),
                ),
                pos_hint={"center_y": 0.60}
            ),
            y=dp(124),
            pos_hint={"center_x": 0.5},
            size_hint_x=0.6,
            padding=[0, 0, "8dp", "8dp"],
        )
        snackbar.open()


    def show_date_picker(self, focus):
        if not focus:
            return

        date_dialog = MDDockedDatePicker()
        # You have to control the position of the date picker dialog yourself.
        date_dialog.pos = [
            self.ids.field.center_x - date_dialog.width / 2,
            self.ids.field.y - (date_dialog.height + dp(32)),
        ]
        date_dialog.bind(on_ok=self.on_ok)
        date_dialog.open()
    pass

class RouteScreen(Screen):

    def get_points(self):

        url = 'https://search-maps.yandex.ru/v1/?&type=biz&lang=ru_RU&apikey=91165e16-5d01-4ca1-8a5d-49779363a0f8'
        point_a = [0,0]
        point_b = [0,0]
        try:
            params = {'text': 'Санкт-Петербург' + self.ids.text_input_a_id.text}
            response = requests.get(url, params=params)

            if response.status_code == 200:
                data = response.json()
                point_a = data["features"][0]["geometry"]["coordinates"]
            else:
                print('Ошибка при получении данных:', response.status_code)

            params = {'text': 'Санкт-Петербург' + self.ids.text_input_b_id.text}
            response = requests.get(url, params=params)

            if response.status_code == 200:
                data = response.json()
                point_b = data["features"][0]["geometry"]["coordinates"]
            else:
                print('Ошибка при получении данных:', response.status_code)

            first = point_a[0]
            point_a[0] = point_a[1]
            point_a[1] = first

            second = point_b[0]
            point_b[0] = point_b[1]
            point_b[1] = second

            return point_a, point_b

        except:
            print("ошибка")


    def create_map(self):
        points = self.get_points()
        point_a = points[0]
        point_b = points[1]

        html_content = '''
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>Passing Python Variable to JavaScript</title>
        </head>

        <body>
            <div id="map" style="width: 650px; height: 550px"></div>
            <script src="https://api-maps.yandex.ru/2.1/?apikey=50249262-df67-4c59-9a72-639cc6170daf&lang=ru_RU" type="text/javascript">
            </script>
            <script type="text/javascript">
            ymaps.ready(function () {
                var myMap = new ymaps.Map('map', {
                    center: [59.938784, 30.314997],
                    zoom: 9,
                    controls: ['routePanelControl']
                });

                // Получение ссылки на панель маршрутизации.
                var control = myMap.controls.get('routePanelControl');

                // Задание состояния для панели маршрутизации.
                control.routePanel.state.set({
                    from: %s,
                    to: %s
                });
            });
        </script>
        </body>
        </html>
        ''' % (point_a, point_b)

        # Запись HTML в файл
        with open("map.html", "w") as file:
            file.write(html_content)

    def Push(self):
        self.create_map()
        webview.create_window('map', 'map.html', width=700, height=600)
        webview.start()
        self.ids.button_id.text = "Was created"

    pass

class HistoryScreen(Screen):

    def submit(self): #вставляем напечатанный текст из word_input
        # self.ids.word.text - обращение к полю text у обьекта экрана с индексом word
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                port='5432')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("INSERT INTO names (имя) VALUES (%s)", (self.ids.word_input.text,))
        self.ids.word_input.text = ''

        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение

    def show_records(self):
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                port='5432')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("SELECT * FROM names")
        records = cursor.fetchall()

        word = ''

        for record in records:
            word = f'{word}\n{record[1]}'
            self.ids.word_label.text = f'{word}'

        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение
    pass

class RecomendScreen(Screen):
    pass

class MyApp(MDApp):
    title = 'My app'

    def build(self):
        #  theme_cls = ThemeManager()
        self.theme_cls.theme_style = 'Dark' #меняем общую тему на Light
        self.theme_cls.primary_palette = "Purple"
        sm = ScreenManager()
        sm.add_widget(MainScreen(name='main'))  # экран со входом
        sm.add_widget(WeatherScreen(name='weather'))
        sm.add_widget(RouteScreen(name='route'))
        sm.add_widget(MapScreen(name='map'))
        sm.add_widget(RecomendScreen(name='recomend'))
        sm.add_widget(RegisterScreen(name='register'))
        sm.add_widget(HistoryScreen(name='history'))
        sm.theme_style = 'Dark' #меняем общую тему на Light
        sm.primary_palette = "Purple"

        return sm


if __name__ == '__main__':
    MyApp().run()
