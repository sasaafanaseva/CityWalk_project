from kivy.uix.widget import Widget
from kivymd.app import MDApp
import webview
from kivy.lang.builder import Builder
from kivymd.uix.button import MDFlatButton
from kivymd.uix.screen import MDScreen

Builder.load_string("""
<MyWebView>
    MDRoundFlatIconButton:
        id: button_id
        text: "Press"
        size_hint: (.15, .15)
        pos_hint: {'center_x': 0.5, 'center_y': 0.4}
        font_size: 30
        theme_text_color: "Custom"
        text_color: "grey"
        icon: "android"
        on_release: root.Push()

    MDLabel:
        id: label_id
        text: "CityWalk"
        font_size: 30
        halign: "center"
        pos_hint: {'center_x': 0.5, 'center_y': 0.9}
""")

class MyWebView(MDScreen):
    def Push(self):
        webview.create_window('Hello world', 'map.html')
        webview.start()


class MyWebApp(MDApp):
    def build(self):
        return MyWebView()


if __name__ == '__main__':
    MyWebApp().run()
