import psycopg2
from psycopg2.extras import NamedTupleCursor
appid = "4d1ed2ae4d05e9e851795cc8825ca1ac"
import requests


# Проверка наличия в базе информации о нужном населенном пункте
def get_city_id(s_city_name):
    city_id = 0
    try:
        res = requests.get("http://api.openweathermap.org/data/2.5/find",
                     params={'q': s_city_name, 'type': 'like', 'units': 'metric', 'lang': 'ru', 'APPID': appid})
        data = res.json()
        cities = ["{} ({})".format(d['name'], d['sys']['country'])
                  for d in data['list']]
        #print("city:", cities)
        city_id = data['list'][0]['id']
        #print('city_id=', city_id)
    except Exception as e:
        print("Exception (find):", e)
        pass
    assert city_id != 0
    return city_id

# Запрос текущей погоды
def request_current_weather(city_id):
    try:
        res = requests.get("http://api.openweathermap.org/data/2.5/weather",
                     params={'id': city_id, 'units': 'metric', 'lang': 'ru', 'APPID': appid})
        data = res.json()
        print("conditions:", data['weather'][0]['description'])
        print("temp:", data['main']['temp'])
        temperature = data['main']['temp']
        description = data['weather'][0]['description']
        #print("temp_min:", data['main']['temp_min'])
        #print("temp_max:", data['main']['temp_max'])
        #print("data:", data)
        return temperature, description
    except Exception as e:
        print("Exception (weather):", e)
        pass

# Прогноз
def request_forecast(city_id):
    try:
        res = requests.get("http://api.openweathermap.org/data/2.5/forecast",
                           params={'id': city_id, 'units': 'metric', 'lang': 'ru', 'APPID': appid})
        data = res.json()
        print('city:', data['city']['name'], data['city']['country'])
        for i in data['list']:
            print( (i['dt_txt'])[:16], '{0:+3.0f}'.format(i['main']['temp']),
                   i['weather'][0]['description'] )
    except Exception as e:
        print("Exception (forecast):", e)
        pass

def recomendation_from_db(temperature, description):
    try:
        # пытаемся подключиться к базе данных
        conn = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost',
                                port='5432', options='-c search_path=project_db')
        conn.autocommit = True
        cursor = conn.cursor(cursor_factory=NamedTupleCursor)

        print(temperature, description)
        temp = (round(temperature),)
        desc = (description,)
        print(temp, desc)
        cursor.execute('SELECT * FROM weather_recommend WHERE temp=(%s) AND description=(%s)', (temp, desc))
        print(cursor.fetchall())

        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение
        print('done')

    except:
        print('Can`t establish connection to database')


import sys
if len(sys.argv) < 2:
    data = (3.45, 'пасмурно')
    recomendation_from_db(temperature=data[0], description=data[1])
    #print('Enter name of city as one argument. For example: Saint Petersburg,RU')
    #sys.exit()
elif len(sys.argv) == 2:
    s_city_name = sys.argv[1]
    print("city:", s_city_name)
    city_id = get_city_id(s_city_name)
    data = request_current_weather(city_id)
    recomendation_from_db(temperature=data[0], description=data[1])
elif len(sys.argv) == 3:
    s_city_name = sys.argv[1] + ' ' + sys.argv[2]
    print("city:", s_city_name)
    city_id = get_city_id(s_city_name)
    data = request_current_weather(city_id)
    recomendation_from_db(temperature=data[0], description=data[1])
