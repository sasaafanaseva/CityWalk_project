# CityWalk_project

проект основывается на библиотеке для создания android приложений: Kivy =>
1. файлы CommentsScreen.kv, History2Screen.kv, HistoryScreen.kv, MainScreen.kv, RecommendationScreen.kv, RegisterScreen.kv, RouteScreen.kv, WeatherScreen.kv -- нужны для отображения экранов
2. они подключаются к main.py через merget_kv.py
3. файл main.py с реализацией всех функций (при запуске main запустится работа приложения)

Для успешного запуска необходимо установить следующие библиотеки: \
webview-android==0.10 \
requests \
bcrypt \
asynckivy \
psycopg2 

Также вставить YOUR_API_KEY от: \
Яндекс API : \
https://yandex.ru/maps-api/products/js-api \
https://yandex.ru/maps-api/products/geocoder-api \
2Gis : https://docs.2gis.com/ru/api/navigation/distance-matrix/overview \
OpenWeatherMap : https://openweathermap.org/api/hourly-forecast \


Подключиться и заполнить БД: \
1. подключиться к PostgreSQL с вашим именем и паролем \
2. скопировать содержимое файла bd.sql в консоль и запустить отдельно \

И конечно же для запуска необходимо установить Kivy и KivyMD последних версий, пример для KivyMD (Ubuntu): \
git clone https://github.com/kivymd/KivyMD.git --depth 1 \
cd KivyMD \
pip install . 

пример для Kivy (Ubuntu): \
python -m pip install "kivy[base]" kivy_examples
