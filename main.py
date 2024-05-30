import webview
from kivymd.uix.pickers import MDDockedDatePicker
from datetime import datetime
from KivyMD.kivymd.uix.button import MDIconButton, MDButton, MDButtonIcon
from KivyMD.kivymd.uix.imagelist import MDSmartTileImage, MDSmartTile
from KivyMD.kivymd.uix.label import MDLabel, MDIcon
from KivyMD.kivymd.uix.screen import MDScreen
from KivyMD.kivymd.uix.slider import MDSlider, MDSliderHandle, MDSliderValueLabel
from KivyMD.kivymd.uix.snackbar import MDSnackbar, MDSnackbarSupportingText, MDSnackbarText, MDSnackbarButtonContainer, \
    MDSnackbarActionButton, MDSnackbarActionButtonText, MDSnackbarCloseButton
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
from KivyMD.kivymd.uix.list import MDListItem, MDList, MDListItemHeadlineText
import bcrypt
from kivymd.uix.menu import MDDropdownMenu
from KivyMD.kivymd.uix.textfield import MDTextField
from merged_kv import load_kv_files

load_kv_files()

conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost', port='5432', options='-c search_path=project_db')
user_email = ''

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
            email = self.ids.name.text  # почему именно здесь не работает без ids а в остальных местах ок?
            password = self.password.text
            global user_email
            user_email = email

            cur = conn.cursor()
            cur.execute("SELECT * FROM users WHERE email = %s ", (email,))
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
                    print(app)
                    app.root.current = "weather"
            cur.close()
    except:
        print('can\'t use users db')

async def set_panel_list():
    await asynckivy.sleep(0)
    app = MDApp.get_running_app()
    history_screen = app.root.get_screen('history')
    history_screen.ids.my_container.add_widget(ExpansionPanelItem())

def get_data():
    current_date_time = datetime.now()
    current_date = current_date_time.date()
    return current_date

mass_weather = []
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
            city_id = data['list'][0]['id']
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
            desc = (description,)
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

    def optimization(self, city_id, time, clock, ind):
        global mass_weather
        mass = self.request_forecast(city_id, time=time, t=clock)
        recomendation = self.recomendation_from_db(temperature=mass[0], description=mass[1], ind=ind)
        mass_weather.append([recomendation, mass[0], mass[1]])

    def get_weather(self, date):
        s_city_name = "Saint Petersburg, Ru"
        city_id = self.get_city_id(s_city_name)
        mass_weather_final = []
        global mass_weather
        mass_weather = []
        my_time = self.get_time(date)
        current_date_time = datetime.now()

        if str(my_time) != str(current_date_time.date()) or str(current_date_time)[11:19] < '08:59:00':
            self.optimization(city_id, time=my_time, clock="09:00", ind=1)
            self.optimization(city_id, time=my_time, clock="15:00", ind=2)
            self.optimization(city_id, time=my_time, clock="21:00", ind=3)

        elif str(current_date_time)[11:19] < '14:59:00':
            self.optimization(city_id, time=my_time, clock="15:00", ind=2)
            self.optimization(city_id, time=my_time, clock="21:00", ind=3)
            mass_weather_final.append(" -- ")
            mass_weather_final.append([" -- ", 0])
            if str(mass_weather[0][0])[5:] == str(mass_weather[1][0])[8:]:
                mass_weather_final.append("Во второй половине дня ")
                mass_weather_final.append([mass_weather[1][0][8:], mass_weather[0][1]])
            else:
                mass_weather_final.append("15:00 -- ")
                mass_weather_final.append([mass_weather[0][0], mass_weather[0][1]])
                mass_weather_final.append("21:00 -- ")
                mass_weather_final.append([mass_weather[1][0], mass_weather[1][1]])
            mass_weather_final.append(mass_weather[0][1])  # температура
            print(mass_weather)
            return mass_weather_final

        elif str(current_date_time)[11:19] < '20:59:00':
            mass_weather_final.append(" -- ")
            mass_weather_final.append([" -- ", 0])
            mass_weather_final.append(" -- ")
            mass_weather_final.append([" -- ", 0])
            self.optimization(city_id, time=my_time, clock="21:00", ind=3)
            mass_weather_final.append("21:00 -- ")
            mass_weather_final.append([mass_weather[0][0], mass_weather[0][1]])
            mass_weather_final.append(mass_weather[0][1])  # температура
            print(mass_weather)
            return mass_weather_final
        else:
            self.ids.wid.text = "выберите следующий день"
            self.ids.wid.text_color = (0.320, 0.250, 0.470, 1)
            return [0]

        print(mass_weather)

        if str(mass_weather[0][0])[7:] == str(mass_weather[1][0])[5:] and str(mass_weather[1][0])[5:] == str(mass_weather[2][0])[8:]:
            mass_weather_final.append("прогноз на весь день: ")
            mass_weather_final.append([mass_weather[0][0][7:], mass_weather[1][1]])

        elif str(mass_weather[0][0])[7:] == str(mass_weather[1][0])[5:]:
            mass_weather_final.append("В первой половине дня ")
            mass_weather_final.append([mass_weather[0][0][7:], mass_weather[0][1]])
            if mass_weather[2][2] == mass_weather[1][2] or mass_weather[2][2] == mass_weather[0][2]:
                mass_weather_final.append("Вечером также ")
                mass_weather_final.append([mass_weather[2][0][8:], mass_weather[2][1]])
            else:
                mass_weather_final.append("21:00 -- ")
                mass_weather_final.append([mass_weather[2][0], mass_weather[2][1]])

        elif str(mass_weather[0][0])[7:] == str(mass_weather[2][0])[8:]:
            mass_weather_final.append("Утром и вечером ")
            mass_weather_final.append([mass_weather[0][0][7:], mass_weather[0][1]])
            if mass_weather[1][2] == mass_weather[0][2] or mass_weather[1][2] == mass_weather[2][2]:
                mass_weather_final.append("Днём также ")
                mass_weather_final.append([mass_weather[1][0][5:], mass_weather[1][1]])
            else:
                mass_weather_final.append("15:00 -- ")
                mass_weather_final.append([mass_weather[1][0], mass_weather[1][1]])

        elif str(mass_weather[1][0])[5:] == str(mass_weather[2][0])[8:]:
            mass_weather_final.append("9:00 -- ")
            mass_weather_final.append([mass_weather[0][0], mass_weather[0][1]])
            mass_weather_final.append("Во второй половине дня ")
            mass_weather_final.append([mass_weather[2][0][8:], mass_weather[2][1]])
        else:
            mass_weather_final.append("9:00 -- ")
            mass_weather_final.append([mass_weather[0][0], mass_weather[0][1]])
            if mass_weather[1][2] == mass_weather[0][2]:
                mass_weather_final.append("15:00 -- Днём также ")
                mass_weather_final.append([mass_weather[1][0][5:], mass_weather[1][1]])
            else:
                mass_weather_final.append("15:00 -- ")
                mass_weather_final.append([mass_weather[1][0], mass_weather[1][1]])
            if mass_weather[2][2] == mass_weather[0][2] or mass_weather[2][2] == mass_weather[1][2]:
                mass_weather_final.append("21:00 -- Вечером также ")
                mass_weather_final.append([mass_weather[2][0][8:], mass_weather[2][1]])
            else:
                mass_weather_final.append("21:00 -- ")
                mass_weather_final.append([mass_weather[2][0], mass_weather[2][1]])
        mass_weather_final.append(mass_weather[1][1])  # температура

        print(mass_weather_final)
        return mass_weather_final

    def on_snackbar_action(self, instance, value):
        if value:
            instance.dismiss()

    def on_ok(self, instance_date_picker):
        instance_date_picker.dismiss()
        recomend = self.get_weather(instance_date_picker.get_date())
        if len(recomend) == 1:
            return
        my_text = ""
        temp = ""
        if len(recomend) == 7:
            temp = str(recomend[6])
            my_text = str(recomend[0] + recomend[1][0] + "\n" + recomend[2] + recomend[3][0] + "\n"  + recomend[4] + recomend[5][0])

        if len(recomend) == 5:
            temp = str(recomend[4])
            my_text = str(recomend[0] + recomend[1][0] + "\n" + recomend[2] + recomend[3][0])

        if len(recomend) == 3:
            temp = str(recomend[2])
            my_text = str(recomend[0] + recomend[1][0])

        snackbar = MDSnackbar(
            MDSnackbarText(
                text="на дату " + "".join(str(date) for date in instance_date_picker.get_date()) + "\n" + "температура будет около " + temp + " градусов",
                padding=[0, 0, 0, dp(10)],
            ),
            MDSnackbarSupportingText(
                text=my_text,
                padding=[0, 0, 0, dp(5)],
            ),
            y=dp(124),
            pos_hint={"center_x": 0.5},
            size_hint_x=0.6,
            padding=[0, 0, "8dp", "8dp"],
            duration= 5
        )
        snackbar.open()


    def show_date_picker(self, focus):
        if not focus:
            return

        date_dialog = MDDockedDatePicker()
        date_dialog.pos = [
            self.ids.field.center_x - date_dialog.width / 2,
            self.ids.field.y - (date_dialog.height + dp(2)),
        ]
        date_dialog.bind(on_ok=self.on_ok)
        date_dialog.open()
    pass

def global_create_map_html(points):
    html_content = '''
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Passing Python Variable to JavaScript</title>
    </head>
    
    <body>
    <div id="map" style="width: 650px; height: 550px"></div>
    <script src="https://api-maps.yandex.ru/2.1/?apikey=50249262-df67-4c59-9a72-639cc6170daf&lang=ru_RU"
            type="text/javascript">
    </script>
    <script src="custom_view.js" type="text/javascript"></script>
    <script type="text/javascript">
        function init () {
        var multiRouteModel = new ymaps.multiRouter.MultiRouteModel(%s,
                {
                wayPointDraggable: true,
                boundsAutoApply: true,
                reverseGeocoding: true
            }),
            
            routeTypeSelector = new ymaps.control.ListBox({
                data: {
                    content: 'how to get'
                },
                items: [
                    new ymaps.control.ListBoxItem({data: {content: "by car"},state: {selected: true}}),
                    new ymaps.control.ListBoxItem({data: {content: "by public transport"}}),
                    new ymaps.control.ListBoxItem({data: {content: "by walking"}})
                ],
                options: {
                    itemSelectOnClick: false
                }
            }),
            autoRouteItem = routeTypeSelector.get(0),
            masstransitRouteItem = routeTypeSelector.get(1),
            pedestrianRouteItem = routeTypeSelector.get(2);
    
        autoRouteItem.events.add('click', function (e) { changeRoutingMode('auto', e.get('target')); });
        masstransitRouteItem.events.add('click', function (e) { changeRoutingMode('masstransit', e.get('target')); });
        pedestrianRouteItem.events.add('click', function (e) { changeRoutingMode('pedestrian', e.get('target')); });
    
        // Создаем карту
        var myMap = new ymaps.Map('map', {
                center: [59.938784, 30.314997],
                zoom: 8,
                controls: [routeTypeSelector]
            }, {
                buttonMaxWidth: 400
            }),
            multiRoute = new ymaps.multiRouter.MultiRoute(multiRouteModel, {
                wayPointDraggable: true,
                boundsAutoApply: true,
                reverseGeocoding: true
            });
    
        myMap.geoObjects.add(multiRoute);
    
        function changeRoutingMode(routingMode, targetItem) {
            multiRouteModel.setParams({ routingMode: routingMode }, true);
            autoRouteItem.deselect();
            masstransitRouteItem.deselect();
            pedestrianRouteItem.deselect();
            targetItem.select();
            routeTypeSelector.collapse();
        }
    }
    
    ymaps.ready(init);
    </script>
    </body>
    </html>
    ''' % points

    # Запись HTML в файл
    with open("map.html", "w") as file:
        file.write(html_content)

def geocoder(point):
    new_url = 'https://search-maps.yandex.ru/v1/?&type=biz&lang=ru_RU&apikey=91165e16-5d01-4ca1-8a5d-49779363a0f8'
    try:
        params = {'text': 'Санкт-Петербург' + point}
        response = requests.get(new_url, params=params)

        if response.status_code == 200:
            data = response.json()
            new_point = data["features"][0]["geometry"]["coordinates"]
            return new_point

    except Exception as e:
        print('Ошибка при получении данных', e)


def global_get_points(points):
    new_points = []
    for p in points:
        point = geocoder(p)
        something = point[0]
        point[0] = point[1]
        point[1] = something
        new_points.append(point)

    return new_points


ind = 0.5
k = 2

class RouteScreen(Screen):
    def save_route(self):
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                port='5432', options='-c search_path=project_db')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        global user_email
        cursor.execute("INSERT INTO history (point1, point2, point3, point4, point5, point6, person) VALUES (%s, %s, %s, %s, %s, %s, %s)", (self.ids.point1.text,self.ids.point2.text, self.ids.point3.text, self.ids.point4.text, self.ids.point5.text, self.ids.point6.text, user_email ))

        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение

    def get_points(self):
        global k
        points = [self.ids.point1.text, self.ids.point2.text]
        for i in range (3, k+1):
            make_id = "point" + str(i)
            points.append(self.ids[make_id].text)
        print(points)

        return global_get_points(points)

    def create_map(self):
        points = self.get_points()
        global_create_map_html(points)
        self.save_route()

    def Push(self):
        self.create_map()
        webview.create_window('map', 'map.html', width=700, height=600)
        webview.start()

        my_button = self.ids.button
        parent_widget = my_button.parent
        parent_widget.remove_widget(my_button)
        self.add_widget(MDLabel(
            text = "маршрут был сохранён, можете посмотреть его в истории",
            size_hint = (0.8, 0.3),
            pos_hint= {"center_x": .5, "center_y": .2},
            text_color= "white",
            halign= "center"
        ))


    def add_point(self):
        global ind
        global k
        if ind == 0.20000000000000004:
            k = k + 1
            make_id = 'point' + str(k)
            self.ids[make_id].size_hint= (0.3, 0.01)
            self.ids[make_id].pos_hint={'center_x': 0.5, 'center_y': 0.3}

            my_button = self.ids.button_add
            parent_widget = my_button.parent
            parent_widget.remove_widget(my_button)
        else:
            k = k + 1
            make_id = "point" + str(k)
            self.ids[make_id].size_hint= (0.3, 0.01)
            self.ids[make_id].pos_hint= {'center_x': 0.5, 'center_y': ind+0.1}
            self.ids.button_add.pos_hint= {"center_x": .5, "center_y": ind}
            ind = ind - 0.1
    pass


class RecomendScreen(Screen):
    def get_recomendations(self):
        try:
            cur = conn.cursor()
            cur.execute("SELECT * FROM recomendations")
            cursor = cur.fetchall()

            self.recomendation_1.text = cursor[0][0]
            self.recomendation_2.text = cursor[0][1]
            cur.close()

        except:
            print('can\'t use rec db')

class TrailingPressedIconButton(
    ButtonBehavior, RotateBehavior, MDListItemTrailingIcon
):
    ...
my_points = []
final_text = []


def get_duration(data):
    url = 'https://routing.api.2gis.com/get_dist_matrix?key=c0b1d2ec-c03d-4bc3-bfa2-b11158d17b9f&version=2.0'
    headers = {'Content-Type': 'application/json'}
    kl = 0
    for point in my_points:
        data["points"].append({"lat": point[0], "lon": point[1]})
        data["sources"].append(kl)
        data["targets"].append(kl)
        kl = kl + 1
    response = requests.post(url, headers=headers, json=data)
    data = response.json()
    mass = []
    i = 0
    for routes in data['routes']:
        if routes['source_id'] == i and routes['target_id'] == i+1:
            mass.append(routes['duration'] // 60)
            i = i + 1
    print(mass)
    return mass

def duration_by_car():
    data = {
        "points": [],
        "sources": [],
        "targets": [],
        "type": "jam"
    }
    mass_car = get_duration(data)
    return mass_car


def duration_by_walking():
    data = {
        "points": [],
        "sources": [],
        "targets": [],
        "mode": "walking"
    }
    mass_walk = get_duration(data)
    return mass_walk


class ExpansionPanelItem(MDExpansionPanel):

    def on_checkbox_active(self, checkbox, value, l):
        if value:
            conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                    port='5432', options='-c search_path=project_db')
            conn.autocommit = True
            cursor = conn.cursor(cursor_factory=NamedTupleCursor)
            app = MDApp.get_running_app()
            screen = app.root.get_screen("history2.0")
            print(final_text)
            for i in final_text:
                if i[0] == l:
                    cursor.execute('SELECT * FROM history WHERE id = %s', (i[1],))
                    mass = cursor.fetchall()[0]
                    itr = 1
                    for point in mass[1:]:
                        if point is None or point == "":
                            break
                        else:
                            print(str(point))
                            screen.ids["text_" + str(itr)].text = str(point)
                            pos_y = (10 - 1.5 * itr) / 10
                            screen.ids["text_" + str(itr)].pos_hint = {'center_x': .5, 'center_y': pos_y}
                            itr = itr + 1

            global my_points
            points = []
            for i in range(1, 7):
                make_id = "text_" + str(i)
                if screen.ids[make_id].text == "":
                    break
                else:
                    points.append(screen.ids[make_id].text)

            my_points = global_get_points(points)
            print(my_points)

            mass_walk = duration_by_walking()
            mass_car = duration_by_car()

            for i in range(0, len(mass_walk)):
                make_id = "but_" + str(i)
                make_str_id = "text_" + str(i)
                make_id_btn = "button_" + str(i)
                pos_y = (10 - 2 * (i+1) + 0.4 * i) / 10
                screen.ids[make_id + "0"].pos_hint = {"center_x": 0.15, "center_y": pos_y }
                screen.ids[make_id + "0"].icon = "walk"
                screen.ids[make_str_id + "0"].pos_hint = {"center_x": 0.67, "center_y": pos_y}
                screen.ids[make_str_id + "0"].text = str(mass_walk[i]) + " min"

                screen.ids[make_id_btn].pos_hint = {"center_x": .8, "center_y": pos_y}

                pos_y = (10 - (2 * (i + 1) + 0.5)+ 0.4 * i) / 10
                screen.ids[make_id + "1"].pos_hint = {"center_x": 0.15, "center_y": pos_y}
                screen.ids[make_id + "1"].icon = "car"
                screen.ids[make_str_id + "1"].pos_hint = {"center_x": 0.67, "center_y": pos_y}
                screen.ids[make_str_id + "1"].text = str(mass_car[i]) + " min"
            app.root.current = "history2.0"

        else:
            print("галочку отжали")
    pass

    def on_open(self, **kwargs):
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                    port='5432', options='-c search_path=project_db')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        global user_email
        cursor.execute('SELECT * FROM history WHERE person = %s', (user_email,))
        mass = cursor.fetchall()
        l = 0
        for route in mass:
            l = l + 1
            my_text = ""
            if len(route) == 3:
                make_id = "text" + str(l)
                self.ids[make_id].text = str(route[1]) + " --> " + str(route[2])
                final_text.append([l, route[0]])
            else:
                final_text.append([l, route[0]])
                for i in route:
                    if i is None or i == "":
                        make_id = "text" + str(l)
                        self.ids[make_id].text = str(route[1]) + " ->...-> " + my_text
                        continue
                    else:
                        my_text = str(i)

        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение

class HistoryScreen(Screen):
    def change_screen(self):
        self.manager.transition.direction =  'right'
        self.manager.current = 'route'
    pass

array = []
class History2Screen(Screen):
    def change_screen(self):
        self.manager.transition.direction =  'right'
        self.manager.current = 'route'

    def comment(self, text, btn):
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                    port='5432', options='-c search_path=project_db')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("INSERT INTO comments (organization, comment) VALUES (%s, %s)", (str(self.ids["text_" + str(btn + 1)].text), text))
        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение

        global array
        my_button = array[1]
        parent_widget = my_button.parent
        parent_widget.remove_widget(my_button)
        my_text = array[0]
        parent_widget = my_text.parent
        parent_widget.remove_widget(my_text)
        array = []

    def add_comment(self, btn):
        pos_y = (10 - (2 * (btn + 1) + 0.2)+ 0.4 * btn) / 10
        text_field = MDTextField(
            multiline= True,
            size_hint= (0.3, 0.2),
            pos_hint= {'center_x': 0.5, 'center_y': pos_y}
        )
        app = MDApp.get_running_app()
        screen = app.root.get_screen("history2.0")
        screen.add_widget(text_field)

        button = (MDIconButton(
            icon= "plus",
            pos_hint= {"center_x": 0.7, "center_y": pos_y},
            on_release= lambda x: self.comment(text_field.text, btn)
        ))
        screen.add_widget(button)
        return text_field, button


    def review(self, value, btn):
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                    port='5432', options='-c search_path=project_db')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("INSERT INTO rating (organization, rating) VALUES (%s, %s)", (str(self.ids["text_" + str(btn + 1)].text), int(value)))
        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение
        global array
        my_button = array[1]
        parent_widget = my_button.parent
        parent_widget.remove_widget(my_button)
        my_slider = array[0]
        parent_widget = my_slider.parent
        parent_widget.remove_widget(my_slider)
        array = []

    def add_review(self, btn):
        pos_y = (10 - (2 * (btn+1) + 0.2)+ 0.4 * btn) / 10
        slider = (MDSlider(
            MDSliderHandle(
        ),
            MDSliderValueLabel(
            ),
            id = 'slider_id',
            size_hint= (0.3, 0.2),
            pos_hint= {"center_x": .5, "center_y": pos_y},
            step=1,
            value=5,
            max= 10
        ))
        app = MDApp.get_running_app()
        screen = app.root.get_screen("history2.0")
        screen.add_widget(slider)

        button = (MDIconButton(
            icon= "plus",
            pos_hint= {"center_x": 0.67, "center_y": pos_y},
            on_release= lambda x: self.review(slider.value, btn)
        ))
        screen.add_widget(button)
        return slider, button

    def menu_open(self, btn):
        global array
        menu_items = [
            {
                "text": f"{i}",
                "on_release": lambda x=f"{i}": self.menu_callback(x, btn),
            } for i in ["написать комментарий", "поставить оценку"]
        ]
        menu = MDDropdownMenu(
            id= "menu",
            pos_hint = {"center_x": 0.8, "center_y": 0.6},
            caller=self.ids.button, items=menu_items
        )
        array.append(menu)
        menu.open()

    def menu_callback(self, text_item, btn):
        global array
        if text_item == "написать комментарий":
            array[0].dismiss()
            array = self.add_comment(btn)
        elif text_item == "поставить оценку":
            array[0].dismiss()
            array = self.add_review(btn)

    def show_map(self):
        global my_points
        print(my_points)
        global_create_map_html(my_points)
        webview.create_window('map', 'map.html', width=700, height=600)
        webview.start()
    pass

class MyApp(MDApp):
    title = 'My app'

    def build(self):
        #  theme_cls = ThemeManager()
        sm = ScreenManager()
        sm.add_widget(MainScreen(name='main'))  # экран со входом
        sm.add_widget(WeatherScreen(name='weather'))
        sm.add_widget(RouteScreen(name='route'))
        sm.add_widget(RecomendScreen(name='recomend'))
        sm.add_widget(RegisterScreen(name='register'))
        sm.add_widget(History2Screen(name='history2.0'))
        sm.add_widget(HistoryScreen(name='history'))

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
