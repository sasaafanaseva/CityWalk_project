from kivy.lang import Builder

# Загрузка всех файлов KV
def load_kv_files():
    Builder.load_file('RouteScreen.kv')
    Builder.load_file('RegisterScreen.kv')
    Builder.load_file('MainScreen.kv')
    Builder.load_file('WeatherScreen.kv')
    Builder.load_file('RecommendationScreen.kv')
    Builder.load_file('HistoryScreen.kv')
    Builder.load_file('History2Screen.kv')
    Builder.load_file('CommentsScreen.kv')
