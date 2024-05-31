from typing import Tuple, List, Any
import webview
from kivymd.uix.pickers import MDDockedDatePicker
from datetime import datetime
from psycopg2._psycopg import Float
from KivyMD.kivymd.uix.button import MDIconButton
from KivyMD.kivymd.uix.label import MDLabel
from KivyMD.kivymd.uix.slider import MDSlider, MDSliderHandle, MDSliderValueLabel
from KivyMD.kivymd.uix.snackbar import MDSnackbar, MDSnackbarSupportingText, MDSnackbarText
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
from KivyMD.kivymd.uix.list import MDListItemTrailingCheckbox
import bcrypt
from kivymd.uix.menu import MDDropdownMenu
from KivyMD.kivymd.uix.textfield import MDTextField
from merged_kv import load_kv_files

load_kv_files()

try:
    conn = psycopg2.connect(dbname='', user='', password='', host='localhost',
                            port='5432', options='-c search_path=project_db')
    conn.autocommit = True

except Exception as e:
    print('Can`t establish connection to database', e)

user_email = ''


#экран регистрации пользователя
class RegisterScreen(Screen):
    def registration(self) -> None:
        self.label.text = 'Sign up'
        email = self.email.text
        password_1 = self.password_1.text
        password_2 = self.password_2.text

        if password_1 == '' or password_2 == '':
            self.password_2.hint_text = 'no password'
            self.password_1.hint_text = 'no password'
        elif password_1 != password_2:
            self.label.text = 'passwords not equal'

        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
        existing_user = cursor.fetchone()

        if existing_user is None:
            hashed_password = bcrypt.hashpw(password_1.encode('utf-8'), bcrypt.gensalt())
            cursor.execute("INSERT INTO users (email, password) VALUES(%s, %s)", (email, hashed_password))
            app = MDApp.get_running_app()
            app.root.current = "main"
        else:
            self.label.text = 'this email already used'

        cursor.close()


#первый экран входа пользователя
class MainScreen(Screen):
    def login(self) -> None:
        self.label_log.text = 'Please login'
        email = self.ids.name.text  # почему именно здесь не работает без ids а в остальных местах ок?
        password = self.password.text
        
        global user_email
        user_email = email
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("SELECT * FROM users WHERE email = %s ", (email,))
        existing_user = cursor.fetchone()

        if existing_user is None:
            self.label_log.text = 'No user with that email'

        else:
            hashed_db_password = existing_user[1]
            hashed_db_password = bytes(hashed_db_password)  # так как изнач формат memoryview
            if not bcrypt.checkpw(password.encode('utf-8'), hashed_db_password):
                self.label_log.text = 'Password is incorrect'

            else:
                app = MDApp.get_running_app()
                screen = app.root.get_screen('recommend')
                screen.get_recomendations()
                screen.get_recommend()
                app.root.current = "weather"
        cursor.close()


async def set_panel_list() -> None:
    await asynckivy.sleep(0)
    app = MDApp.get_running_app()
    history_screen = app.root.get_screen('history')
    history_screen.ids.my_container.add_widget(ExpansionPanelItem())


mass_weather = []
#экран погоды, работа с API openweathermap 
class WeatherScreen(Screen):
    def get_city_id(self, s_city_name: str) -> int:
        city_id = 0
        try:
            res = requests.get("http://api.openweathermap.org/data/2.5/find",
                               params={'q': s_city_name, 'type': 'like', 'units': 'metric', 'lang': 'ru',
                                       'APPID': "YOUR_APP_KEY"})
            data = res.json()
            cities = ["{} ({})".format(d['name'], d['sys']['country'])
                      for d in data['list']]
            city_id = data['list'][0]['id']
        except Exception as e:
            print("Exception (find):", e)
            pass
        assert city_id != 0
        return city_id

    def request_forecast(self, city_id: int, time: str, t: str) -> Tuple[float, str]:
        try:
            res = requests.get("http://api.openweathermap.org/data/2.5/forecast",
                               params={'id': city_id, 'units': 'metric', 'lang': 'ru',
                                       'APPID': "YOUR_APP_KEY",
                                       'dt': '2024-03-30'})
            data = res.json()
            for i in data['list']:
                if (i['dt_txt'][:10] == time and i['dt_txt'][11:16] == t):
                    return i['main']['temp'], i['weather'][0]['description']
        except Exception as e:
            print("Exception (forecast):", e)
            pass

    def recomendation_from_db(self, temperature: float, description: str, ind: int) -> StringProperty:
        temp = (round(temperature),)
        desc = (description,)
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute('SELECT * FROM weather_recommend WHERE temp=(%s) AND description=(%s) AND ind=(%s)',
                           (temp, desc, ind))
        recomendation = cursor.fetchall()[0][3]
        cursor.close()
        return recomendation

    def get_time(self, date: list) -> StringProperty:
        date_string = date[0].strftime("%Y-%m-%d")
        return date_string

    def optimization(self, city_id: int, time: str, clock: str, ind: int) -> None:
        global mass_weather
        mass = self.request_forecast(city_id, time=time, t=clock)
        recomendation = self.recomendation_from_db(temperature=mass[0], description=mass[1], ind=ind)
        mass_weather.append([recomendation, mass[0], mass[1]])

    def get_weather(self, date: list) -> list:
        s_city_name = "Saint Petersburg, Ru"
        city_id = self.get_city_id(s_city_name)
        mass_weather_final = []
        global mass_weather
        mass_weather = []
        my_time =str(self.get_time(date))
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

        if str(mass_weather[0][0])[7:] == str(mass_weather[1][0])[5:] and str(mass_weather[1][0])[5:] == str(
                mass_weather[2][0])[8:]:
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

        return mass_weather_final

    def on_snackbar_action(self, instance, value) -> None:
        if value:
            instance.dismiss()

    def on_ok(self, instance_date_picker: MDDockedDatePicker) -> None:
        instance_date_picker.dismiss()
        recomend = self.get_weather(instance_date_picker.get_date())
        if len(recomend) == 1:
            return
        my_text = ""
        temp = ""
        if len(recomend) == 7:
            temp = str(recomend[6])
            my_text = str(
                recomend[0] + recomend[1][0] + "\n" + recomend[2] + recomend[3][0] + "\n" + recomend[4] + recomend[5][0])

        if len(recomend) == 5:
            temp = str(recomend[4])
            my_text = str(recomend[0] + recomend[1][0] + "\n" + recomend[2] + recomend[3][0])

        if len(recomend) == 3:
            temp = str(recomend[2])
            my_text = str(recomend[0] + recomend[1][0])

        snackbar = MDSnackbar(
            MDSnackbarText(
                text="на дату " + "".join(str(date) for date in
                                          instance_date_picker.get_date()) + "\n" + "температура будет около " + temp + " градусов",
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
            duration=5
        )
        snackbar.open()

    def show_date_picker(self, focus: bool) -> None:
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


def global_create_map_html(points: list) -> None:
    html_content = '''
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Passing Python Variable to JavaScript</title>
    </head>
    
    <body>
    <div id="map" style="width: 650px; height: 550px"></div>
    <script src="https://api-maps.yandex.ru/2.1/?apikey=YOUR_APP_KEY&lang=ru_RU"
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


def geocoder(point: str) -> List:
    new_url = 'https://search-maps.yandex.ru/v1/?&type=biz&lang=ru_RU&apikey=YOUR_APP_KEY'
    try:
        params = {'text': 'Санкт-Петербург' + point}
        response = requests.get(new_url, params=params)

        if response.status_code == 200:
            data = response.json()
            new_point = data["features"][0]["geometry"]["coordinates"]
            return new_point

    except Exception as e:
        print('Ошибка при получении данных', e)


def global_get_points(points: list) -> List:
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
#экран маршрутизации, работа с Яндекс API
class RouteScreen(Screen):
    def save_route(self) -> None:
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        global user_email
        cursor.execute(
            "INSERT INTO history (point1, point2, point3, point4, point5, point6, person) VALUES (%s, %s, %s, %s, %s, %s, %s)",
            (self.ids.point1.text, self.ids.point2.text, self.ids.point3.text, self.ids.point4.text,
             self.ids.point5.text, "", user_email))
        cursor.close()

    def get_points(self) -> List:
        global k
        points = [self.ids.point1.text, self.ids.point2.text]
        for i in range(3, k + 1):
            make_id = "point" + str(i)
            points.append(self.ids[make_id].text)
        return global_get_points(points)

    def create_map(self) -> None:
        points = self.get_points()
        global_create_map_html(points)
        self.save_route()

    def Push(self) -> None:
        self.create_map()
        webview.create_window('map', 'map.html', width=700, height=600)
        webview.start()

        my_button = self.ids.button
        parent_widget = my_button.parent
        parent_widget.remove_widget(my_button)
        self.add_widget(MDLabel(
            text="маршрут был сохранён, можете посмотреть его в истории",
            size_hint=(0.8, 0.3),
            pos_hint={"center_x": .5, "center_y": .2},
            text_color="white",
            halign="center"
        ))

    def add_point(self) -> None:
        global ind
        global k
        if ind == 0.30000000000000004:
            k = k + 1
            make_id = 'point' + str(k)
            self.ids[make_id].size_hint = (0.3, 0.01)
            self.ids[make_id].pos_hint = {'center_x': 0.5, 'center_y': 0.4}

            my_button = self.ids.button_add
            parent_widget = my_button.parent
            parent_widget.remove_widget(my_button)
        else:
            k = k + 1
            make_id = "point" + str(k)
            self.ids[make_id].size_hint = (0.3, 0.01)
            self.ids[make_id].pos_hint = {'center_x': 0.5, 'center_y': ind + 0.1}
            self.ids.button_add.pos_hint = {"center_x": .5, "center_y": ind}
            ind = ind - 0.1
    pass

#экран персонализированных рекомендаций
class RecommendScreen(Screen):

    def get_my_point(self, point: list) -> None:
        content = '''
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <title>Passing Python Variable to JavaScript</title>
        </head>
        
        <body>
        <div id="map" style="width: 650px; height: 550px"></div>
        <script src="https://api-maps.yandex.ru/2.1/?apikey=YOUR_APP_KEY&lang=ru_RU"
                type="text/javascript">
        </script>
        <script src="custom_view.js" type="text/javascript"></script>
        <script type="text/javascript">
        ymaps.ready(init);
        
        function init () {
            var myMap = new ymaps.Map("map", {
                    center: %s,
                    zoom: 15
                }),
                myGeoObject = new ymaps.GeoObject({
                    geometry: {
                        type: "Point",
                        coordinates: %s
                    },
                }, {
                    draggable: true
                })
            myMap.geoObjects.add(myGeoObject);
        }
        
        </script>
        </body>
        </html>
        ''' % (point, point)

        # Запись HTML в файл
        with open("point.html", "w") as file:
            file.write(content)
    def show_point(self, i: int) -> None:
        p = "Санкт-Петербург, " + self.ids["recommendation_" + str(i)].text
        point = geocoder(str(p))
        lat = point[0]
        point[0] = point[1]
        point[1] = lat
        self.get_my_point(point)
        webview.create_window('point', 'point.html', width=700, height=600)
        webview.start()

    def show_point_ver2(self, i: int) -> None:
        res = requests.get(
            "https://kudago.com/public-api/v1.4/events/?lang=ru&fields=id,title,description,site_url&text_format=text&location=spb&actual_since=3444385206")
        data = res.json()
        webview.create_window('point-2', data["results"][i]["site_url"], width=700, height=600)
        webview.start()

    def get_recomendations(self) -> None:
        global user_email
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute('SELECT * FROM rating WHERE person = %s AND rating > 7.0 ORDER BY rating DESC', (user_email,))
        mass = cursor.fetchall()
        if len(mass) > 2:
            self.ids.recommendation_1.text = str(mass[0][0])
            self.ids.icon_id_1.icon = "map-marker"
            self.ids.recommendation_2.text = str(mass[1][0])
            self.ids.icon_id_2.icon = "map-marker"
            self.ids.recommendation_3.text = str(mass[2][0])
            self.ids.icon_id_3.icon = "map-marker"
        elif len(mass) > 1:
            self.ids.recommendation_1.text = str(mass[0][0])
            self.ids.icon_id_1.icon = "map-marker"
            self.ids.recommendation_2.text = str(mass[1][0])
            self.ids.icon_id_2.icon = "map-marker"
        elif len(mass) == 1:
            self.ids.recommendation_1.text = str(mass[0][0])
            self.ids.icon_id_1.icon = "map-marker"
        else:
            self.ids.recommendation_1.text = "у вас нет мест с рейтингом > 7"
        cursor.close()

    def get_recommend(self) -> None:
        res = requests.get(
            "https://kudago.com/public-api/v1.4/events/?lang=ru&fields= id,title,description,site_url&text_format=text&location=spb&actual_since=3444385206")
        data = res.json()
        self.ids.recommend_1.text = str(data["results"][0]["title"])
        self.ids.icon_1.icon = "map-marker"
        self.ids.recommend_2.text = str(data["results"][1]["title"])
        self.ids.icon_2.icon = "map-marker"
        self.ids.recommend_3.text = str(data["results"][2]["title"])
        self.ids.icon_3.icon = "map-marker"

    pass


class TrailingPressedIconButton(
    ButtonBehavior, RotateBehavior, MDListItemTrailingIcon
):
    ...


my_points = []
final_text = []

#подключение и работа с 2Gis
def get_duration(data: dict[str, list | str]) -> List:
    url = 'https://routing.api.2gis.com/get_dist_matrix?key=YOUR_APP_KEY&version=2.0'
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
        if routes['source_id'] == i and routes['target_id'] == i + 1:
            mass.append(routes['duration'] // 60)
            i = i + 1
    return mass

def duration_by_car() -> List:
    data = {
        "points": [],
        "sources": [],
        "targets": [],
        "type": "jam"
    }
    mass_car = get_duration(data)
    return mass_car


def duration_by_walking() -> List:
    data = {
        "points": [],
        "sources": [],
        "targets": [],
        "mode": "walking"
    }
    mass_walk = get_duration(data)
    return mass_walk


def take_average(mass: list) -> Float:
    summ = 0
    calc = 0
    for i in mass:
        summ = summ + i[0]
        calc = calc + 1
    return round(summ / calc, 1)


class ExpansionPanelItem(MDExpansionPanel):
    def on_checkbox_active(self, checkbox: MDListItemTrailingCheckbox, value: bool, l: int) -> None:
        if value:
            cursor = conn.cursor(cursor_factory=NamedTupleCursor)
            app = MDApp.get_running_app()
            screen = app.root.get_screen("history2.0")
            for i in final_text:
                if i[0] == l:
                    cursor.execute('SELECT * FROM history WHERE id = %s', (i[1],))
                    mass = cursor.fetchall()[0]
                    itr = 1
                    for point in mass[1:]:
                        if point is None or point == "":
                            break
                        else:
                            screen.ids["text_" + str(itr)].text = str(point)
                            pos_y = (10 - 1.5 * itr) / 10
                            make_id_btn = "button_" + str(itr)
                            screen.ids["text_" + str(itr)].pos_hint = {'center_x': .5, 'center_y': pos_y}
                            screen.ids["comment_button_" + str(itr)].pos_hint = {"center_x": 0.65, "center_y": pos_y}
                            screen.ids[make_id_btn].pos_hint = {"center_x": .9, "center_y": pos_y}
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
            mass_walk = duration_by_walking()
            mass_car = duration_by_car()

            for i in range(0, len(mass_walk)):
                make_id = "but_" + str(i)
                make_str_id = "text_" + str(i)
                pos_y = (10 - 2 * (i + 1) + 0.45 * i) / 10
                screen.ids[make_id + "0"].pos_hint = {"center_x": 0.15, "center_y": pos_y}
                screen.ids[make_id + "0"].icon = "walk"
                screen.ids[make_str_id + "0"].pos_hint = {"center_x": 0.67, "center_y": pos_y}
                screen.ids[make_str_id + "0"].text = str(mass_walk[i]) + " min"

                pos_y = (10 - (2 * (i + 1) + 0.5) + 0.45 * i) / 10
                screen.ids[make_id + "1"].pos_hint = {"center_x": 0.15, "center_y": pos_y}
                screen.ids[make_id + "1"].icon = "car"
                screen.ids[make_str_id + "1"].pos_hint = {"center_x": 0.67, "center_y": pos_y}
                screen.ids[make_str_id + "1"].text = str(mass_car[i]) + " min"
            app.root.current = "history2.0"
            cursor.close()
    pass

    def on_open(self, **kwargs) -> None:
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        global user_email
        cursor.execute('SELECT * FROM history WHERE person = %s', (user_email,))
        mass = cursor.fetchall()
        l = 0
        for route in mass:
            l = l + 1
            my_text = ""
            if route[3] == '':
                make_id = "text" + str(l)
                make_icon_id = "icon" + str(l)
                self.ids[make_id].text = "  " + str(route[1]) + " --> " + str(route[2])
                self.ids[make_icon_id].icon = "map-marker"
                final_text.append([l, route[0]])
            else:
                final_text.append([l, route[0]])
                for i in route:
                    if i is None or i == "":
                        make_id = "text" + str(l)
                        make_icon_id = "icon" + str(l)
                        self.ids[make_id].text = "  " + str(route[1]) + " ->...-> " + my_text
                        self.ids[make_icon_id].icon = "map-marker"
                        continue
                    else:
                        my_text = str(i)
        cursor.close()


class HistoryScreen(Screen):
    def change_screen(self) -> None:
        self.manager.transition.direction = 'right'
        self.manager.current = 'route'
    pass

array = []

class History2Screen(Screen):
    def change_screen(self) -> None:
        self.manager.transition.direction = 'right'
        self.manager.current = 'route'

    def get_new_screen(self, index: int) -> None:
        global user_email
        app = MDApp.get_running_app()
        screen = app.root.get_screen("comments")
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        label = str(self.ids["text_" + str(index)].text)
        cursor.execute('SELECT rating FROM rating WHERE organization = %s AND person = %s', (label, user_email))
        take_grade = cursor.fetchall()
        if take_grade != []:
            grade = take_average(take_grade)
        else:
            grade = ""
        screen.ids.label.text = label + "  " + str(grade)
        screen.ids.box.clear_widgets()
        cursor.execute('SELECT comment FROM comments WHERE organization = %s AND person = %s', (label, user_email))
        mass = cursor.fetchall()
        cursor.close()
        pos_y = 0.8
        for comment in mass:
            txt = MDLabel(text=str(comment[0]), text_color="white", pos_hint={'center_x': 0.8, 'center_y': pos_y},
                          font_style="Body")
            pos_y = pos_y - 0.1
            screen.ids.box.add_widget(txt)
        app.root.current = "comments"

    def comment(self, text: str, btn: int) -> None:
        global user_email
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("INSERT INTO comments (organization, comment, person) VALUES (%s, %s, %s)",
                       (str(self.ids["text_" + str(btn + 1)].text), text, user_email))
        cursor.close()
        global array
        my_button = array[1]
        parent_widget = my_button.parent
        parent_widget.remove_widget(my_button)
        my_text = array[0]
        parent_widget = my_text.parent
        parent_widget.remove_widget(my_text)
        array = []

    def add_comment(self, btn: int) -> Tuple:
        pos_y = (10 - (2 * (btn + 1)) + 0.5 * btn - 0.2) / 10
        text_field = MDTextField(
            multiline=True,
            size_hint=(0.3, 0.2),
            pos_hint={'center_x': 0.5, 'center_y': pos_y}
        )
        app = MDApp.get_running_app()
        screen = app.root.get_screen("history2.0")
        screen.add_widget(text_field)

        button = (MDIconButton(
            icon="plus",
            pos_hint={"center_x": 0.7, "center_y": pos_y},
            on_release=lambda x: self.comment(text_field.text, btn)
        ))
        screen.add_widget(button)
        return text_field, button

    def review(self, value: float, btn: int) -> None:
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)
        cursor.execute("INSERT INTO rating (organization, rating, person) VALUES (%s, %s, %s)",
                       (str(self.ids["text_" + str(btn + 1)].text), int(value), user_email))
        cursor.close()  # закрываем курсор
        global array
        my_button = array[1]
        parent_widget = my_button.parent
        parent_widget.remove_widget(my_button)
        my_slider = array[0]
        parent_widget = my_slider.parent
        parent_widget.remove_widget(my_slider)
        array = []

    def add_review(self, btn: int) -> Tuple:
        pos_y = (10 - (2 * (btn + 1)) + 0.5 * btn - 0.2) / 10
        slider = (MDSlider(
            MDSliderHandle(
            ),
            MDSliderValueLabel(
            ),
            id='slider_id',
            size_hint=(0.3, 0.2),
            pos_hint={"center_x": .5, "center_y": pos_y},
            step=1,
            value=5,
            max=10
        ))
        app = MDApp.get_running_app()
        screen = app.root.get_screen("history2.0")
        screen.add_widget(slider)

        button = (MDIconButton(
            icon="plus",
            pos_hint={"center_x": 0.67, "center_y": pos_y},
            on_release=lambda x: self.review(slider.value, btn)
        ))
        screen.add_widget(button)
        return slider, button

    def menu_open(self, btn: int) -> None:
        global array
        menu_items = [
            {
                "text": f"{i}",
                "on_release": lambda x=f"{i}": self.menu_callback(x, btn),
            } for i in ["написать комментарий", "поставить оценку"]
        ]
        menu = MDDropdownMenu(
            id="menu",
            pos_hint={"center_x": 0.8, "center_y": 0.6},
            caller=self.ids.button, items=menu_items
        )
        array.append(menu)
        menu.open()

    def menu_callback(self, text_item: str, btn: int) -> None:
        global array
        if text_item == "написать комментарий":
            array[0].dismiss()
            array = self.add_comment(btn)
        elif text_item == "поставить оценку":
            array[0].dismiss()
            array = self.add_review(btn)

    def show_map(self) -> None:
        global my_points
        global_create_map_html(my_points)
        webview.create_window('map', 'map.html', width=700, height=600)
        webview.start()
    pass

class CommentsScreen(Screen):
    def back_to_history(self) -> None:
        self.manager.transition.direction = 'right'
        self.manager.current = 'history2.0'
    pass

class MyApp(MDApp):
    title = 'My app'

    def build(self) -> ScreenManager:
        sm = ScreenManager()
        sm.add_widget(MainScreen(name='main'))  # экран со входом
        sm.add_widget(WeatherScreen(name='weather'))
        sm.add_widget(RouteScreen(name='route'))
        sm.add_widget(RecommendScreen(name='recommend'))
        sm.add_widget(RegisterScreen(name='register'))
        sm.add_widget(History2Screen(name='history2.0'))
        sm.add_widget(HistoryScreen(name='history'))
        sm.add_widget(CommentsScreen(name='comments'))

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
