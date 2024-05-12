# CityWalk_project

проект основывается на библиотеке для создания android приложений: Kivy =>
1. файл с отображением экранов: my.kv (финальная версия дизайна собрана в один файл для удобства)
2. файл main.py с реализацией всех функций (для запуска нужны соответствующие импортированные библиотеки и API-KEYS от Яндекс Javascript-api, Яндекс поиск по организациям, Погода openweathermap)
3. Для работы с базой данных используем psycopg2 (создание базы в файле bd.sql), для запуска нужно подключиться со своим паролем.


Для запуска нужно установить Kivy и KivyMD последних версий, пример для KivyMD (Ubuntu): \
git clone https://github.com/kivymd/KivyMD.git --depth 1 \
cd KivyMD \
pip install . 

пример для Kivy (Ubuntu): \
python -m pip install "kivy[base]" kivy_examples


Помимо этого импортируются  webview-android==0.10, requests, bcrypt, asynckivy \
Также обязательно подключиться к базе, создать и заполнить все таблицы перед запуском приложения
