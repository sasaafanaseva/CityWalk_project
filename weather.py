import psycopg2
from psycopg2.extras import NamedTupleCursor
appid = "4d1ed2ae4d05e9e851795cc8825ca1ac"
import requests


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
        cursor.execute('SELECT * FROM weather_recommend WHERE temp=(%s) AND description=(%s)', (temp, desc))
        print(cursor.fetchall())

        cursor.close()  # закрываем курсор
        conn.close()  # закрываем подключение
        print('done')

    except Exception as e:
        print("Exception:", e)

data = (3.45, 'пасмурно')
recomendation_from_db(temperature=data[0], description=data[1])