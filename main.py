import webview
from kivymd.uix.pickers import MDDockedDatePicker
from KivyMD.kivymd.uix.snackbar import MDSnackbar, MDSnackbarSupportingText, MDSnackbarText, MDSnackbarButtonContainer, \
    MDSnackbarActionButton, MDSnackbarActionButtonText
import requests
import psycopg2
from psycopg2.extras import NamedTupleCursor
import asynckivy
from kivy.metrics import dp
from kivy.properties import StringProperty
from kivy.uix.behaviors import ButtonBehavior
from kivy.uix.screenmanager import ScreenManager, Screen
from kivymd.app import MDApp
from kivymd.uix.behaviors import RotateBehavior
from kivymd.uix.expansionpanel import MDExpansionPanel
from kivymd.uix.list import MDListItemTrailingIcon
from KivyMD.kivymd.uix.list import MDListItem
import bcrypt

from merged_kv import load_kv_files

load_kv_files()

conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost', port='5432', options='-c search_path=project_db')


class RegisterScreen(Screen):

    def registration(self):

        self.label.text = 'Sign up'
        email = self.email.text
        password_1 = self.password_1.text
        password_2 = self.password_2.text

        if password_1 == '' or password_2 == '':
            self.password_2.hint_text = 'no password'
            self.password_1.hint_text = 'no password'
        elif password_1 != password_2:
            self.label.text = 'passwords not equal'

        cur = conn.cursor()
        cur.execute("SELECT * FROM users WHERE email = %s", (email,))
        existing_user = cur.fetchone()

        if existing_user is None:

            hashed_password = bcrypt.hashpw(password_1.encode('utf-8'), bcrypt.gensalt())
            cur.execute("INSERT INTO users (email, password) VALUES(%s, %s)", (email, hashed_password))
            conn.commit()
            app = MDApp.get_running_app()
            app.root.current = "main"
        else:
            self.label.text = 'this email already used'

        cur.close()


class MainScreen(Screen):
    try:
        def login(self):
            self.label_log.text = 'Please login'
            name = self.ids.name.text  # почему именно здесь не работает без ids а в остальных местах ок?
            password = self.password.text

            cur = conn.cursor()
            cur.execute("SELECT * FROM users WHERE email = %s ", (name,))
            existing_user = cur.fetchone()

            if existing_user is None:
                self.label_log.text = 'No user with that email'

            else:
                hashed_db_password = existing_user[1]
                hashed_db_password = bytes(hashed_db_password)  # так как изнач формат memoryview

                if not bcrypt.checkpw(password.encode('utf-8'), hashed_db_password):
                    self.label_log.text = 'Password is incorrect'

                else:
                    app = MDApp.get_running_app()
                    app.root.current = "recomend"
            cur.close()

    except:
        print('can\'t use users db')


class ChangePasswordScreen(Screen):

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
            #нельзя смотреть прогноз на сегодняшний день позже 09:00, так как погода смотрит только прогноз на будущее :)
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

def global_create_map_html(point_a, point_b):
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

def global_get_points(point_a, point_b):
    url = 'https://search-maps.yandex.ru/v1/?&type=biz&lang=ru_RU&apikey=91165e16-5d01-4ca1-8a5d-49779363a0f8'
    try:
        params = {'text': 'Санкт-Петербург' + point_a}
        response = requests.get(url, params=params)

        if response.status_code == 200:
            data = response.json()
            point_a = data["features"][0]["geometry"]["coordinates"]
        else:
            print('Ошибка при получении данных:', response.status_code)

        params = {'text': 'Санкт-Петербург' + point_b}
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


class RouteScreen(Screen):

    def save_route(self):
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                port='5432', options='-c search_path=project_db')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("INSERT INTO history (откуда, куда)VALUES (%s, %s)", (self.ids.text_input_a_id.text,self.ids.text_input_b_id.text,))

        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение

    def get_points(self):
        return global_get_points(self.ids.text_input_a_id.text, self.ids.text_input_b_id.text)

    def create_map(self):
        points = self.get_points()
        point_a = points[0]
        point_b = points[1]
        global_create_map_html(point_a, point_b)
        self.save_route()

    def Push(self):
        self.create_map()
        webview.create_window('map', 'map.html', width=700, height=600)
        webview.start()
        self.ids.button._button_text.text = "Was created"

    pass

class TrailingPressedIconButton(
    ButtonBehavior, RotateBehavior, MDListItemTrailingIcon
):
    ...

class MyListItem(MDListItem):
    text = StringProperty()

    def on_checkbox_active(self, checkbox, value):
        if value:
            points = self.text
            point_a = points.split(" --> ")[0]
            point_b = points.split(" --> ")[1]
            print(point_a, point_b)
            points = global_get_points(point_a, point_b)
            point_a = points[0]
            point_b = points[1]

            global_create_map_html(point_a, point_b)
            webview.create_window('map', 'map.html', width=700, height=600)
            webview.start()

        else:
            print("галочку отжали")
    pass

class ExpansionPanelItem(MDExpansionPanel):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                port='5432', options='-c search_path=project_db')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute('SELECT откуда, куда, кто FROM history')
        mass = cursor.fetchall()
        for i in mass:
            #if i[2] == email:
            my_text = i[0] + " --> " + i[1]
            self.ids.my_list.add_widget(MyListItem(text=my_text))
        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение


class HistoryScreen(Screen):

    def change_screen(self):
        self.manager.transition.direction =  'right'
        self.manager.current = 'route'
    pass

class RecomendScreen(Screen):
    pass

class MyApp(MDApp):
    title = 'My app'

    def build(self):
        #  theme_cls = ThemeManager()
        sm = ScreenManager()
        sm.add_widget(MainScreen(name='main'))  # экран со входом
        sm.add_widget(ChangePasswordScreen(name='changepw'))
        sm.add_widget(WeatherScreen(name='weather'))
        sm.add_widget(RouteScreen(name='route'))
        sm.add_widget(MapScreen(name='map'))
        sm.add_widget(RecomendScreen(name='recomend'))
        sm.add_widget(RegisterScreen(name='register'))
        sm.add_widget(HistoryScreen(name='history'))
        async def set_panel_list():
            await asynckivy.sleep(0)
            history_screen = sm.get_screen('history')
            history_screen.ids.my_container.add_widget(ExpansionPanelItem())
        asynckivy.start(set_panel_list())

        return sm

    def tap_expansion_chevron(
            self, panel: MDExpansionPanel, chevron: TrailingPressedIconButton
    ):
        panel.open() if not panel.is_open else panel.close()
        panel.set_chevron_down(
            chevron
        ) if not panel.is_open else panel.set_chevron_up(chevron)


if __name__ == '__main__':
    MyApp().run()
