from kivy.uix.screenmanager import ScreenManager, Screen
from kivymd.theming import ThemeManager
from kivymd.app import MDApp
from kivymd.uix.label import MDLabel
from kivymd.uix.button import MDButton, MDButtonText, MDButtonIcon

from kivymd.uix.textfield import MDTextField
from kivymd.uix.navigationbar import MDNavigationBar, MDNavigationItem


class RegisterScreen(Screen):
    pass


class MainScreen(Screen):
    pass
#    def login(self):
#        try:
#            name = str(self.text_input.text)
#            password = str(self.text_input.text)
            
#
#        except:
#            pass


class MapScreen(Screen):
    pass


class WeatherScreen(Screen):
    pass


class RouteScreen(Screen):
    pass


class RecomendScreen(Screen):
    pass


class MyApp(MDApp):
    title = 'Coppa app'

    def build(self):
      #  theme_cls = ThemeManager()
      #  self.theme_cls.theme_style = 'Dark' #меняем общую тему на Light
        
        sm = ScreenManager()

        sm.add_widget(MainScreen(name='main')) #экран со входом
        sm.add_widget(RegisterScreen(name='register'))
        sm.add_widget(MapScreen(name='map'))
        sm.add_widget(WeatherScreen(name='weather'))
        sm.add_widget(RouteScreen(name='route'))
        sm.add_widget(RecomendScreen(name='recomend'))

        return sm


if __name__ == '__main__':
    MyApp().run()
