from kivy.lang import Builder

# Загрузка всех файлов KV
def load_kv_files():
#    Builder.load_file('MapScreen.kv')  #его пока нет и мб не будет
    Builder.load_file('RouteScreen.kv')
    Builder.load_file('RegisterScreen.kv')
    Builder.load_file('MainScreen.kv')
    Builder.load_file('WeatherScreen.kv')
    Builder.load_file('RecomendationScreen.kv')
    Builder.load_file('ChangePasswordScreen.kv')
