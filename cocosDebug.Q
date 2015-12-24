[General]
SyntaxVersion=2
BeginHotkey=120
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=053b05eb-800b-468f-a5fc-5ab62521bbd8
Description=cocosDebug
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[UIPackage]
UEsDBBQAAgAIAOx0mEfswhzaxwIAAAgeAAAJABEAVUlQYWNrYWdlVVQNAAeaA3xWmgN8VpoDfFbtWN1OE0EU/qYt/YFSoFD+/ElvvJd7QwJEIklBQ6sXJl5UqKahbJu2RLjzFXwEH8En8M4Yb9Q30MQ7bxpjuLP1zHaWjgRkz8zqium3OZ12u2e/OWdmzny7UfTx4f3Up5evFj/jFJYRRbeXQlw7J5S5mAQi6ne31+t5p3tDXCr8IIupMUxQO0ImxzxJNkqWIhsjGydLq+u6w7T9N9hGnY428rgNh9omjsDBLM0Y717igmsbW9/f5JY/iih9f64Ky31s4CbMkYQQHn/kAl6v1f9bQwkFix6MKv4JtXa4/CXKdwMVbKGMfWq5yFIV1sfTr19Mtd56/tM2xL+J9Xpz32L5QfovWfgL2MHWP2x0Op1A7vOIit+xgZ9p3RnUP379EVqtlLtOGY9RM+xDBhEh9UlCaU8/PhGt/j1AFS0y0x5MEn8aA93rxyeq8W8Taxm7uEt5qDH3XlX/RRx9reaXP6bxl4j/kPZ9i/EX3PHXnxfWSH3UyJqGPZkxmH8jWvwD/lUahx3s8fldPZNi5D9+avx3LPMvtXmSwZ9w520fD2nmNWn+VejTcP2x85/U4i9Q7vlZ/zX+jLqfX/6Uxr9O/I5d/tnxy7V662T+Sf25ZMEvTviz51zzO/0ZNo7Pzpnbx81ivlh2WvlipVl9co7/htM4aK/WD035PX/TEbjs+iWA5w+3/l9lrL8xVQMkwtAfaVUDJILQH/OQ+4D/+McRrP5YoPYagz+DYPXHNLVzDP4JhKs/5N6XUN8D0B8u/3VG/FMIVH+48cwy+LMa/7svb7++/mbzBGcHxiuLM3FHzecXZDcM/MOuv7b7ny2C0J+L1OYY828a4erPGQSrP6+oNe2XP4dw9aesFZ7+XKHqU8VT6oPchZ2/8vw1p8V/j6pei45nbg3cZcdv8v5zXuPfxAFloE05KJA57D3YJP4FjT8ImLz/HWIIiZ9QSwECFwsUAAIACADsdJhH7MIc2scCAAAIHgAACQAJAAAAAAAAAAAAAIAAAAAAVUlQYWNrYWdlVVQFAAeaA3xWUEsFBgAAAAABAAEAQAAAAP8CAAAAAA==


[Script]
UserVar Yanshi=4.5 "—” ±£®√Î£©"
UserVar winWSStr="WebStorm" "WebStorm"
UserVar winChromeStr="Google Chrome" "Google Chrome"
UserVar mX= 640 "mouseX"
UserVar mY= 615 "mouseY"


winCur = Plugin.Window.Foreground()


winWS = Plugin.Window.Search(winWSStr)
arrwinWS = Split(winWS, "|")
winWS = arrwinWS(0)

Call Plugin.Window.Active(winWS)

KeyDown 16, 1
KeyPress 120, 1
KeyUp 16, 1

Delay Yanshi*1000

winChrome = Plugin.Window.Search(winChromeStr)
arrwinChrome = Split(winChrome, "|")
winChrome = arrwinChrome(0)

Call Plugin.Bkgnd.LeftClick(winChrome, 640, 614)
Beep
Call Plugin.Window.Active(winCur)
