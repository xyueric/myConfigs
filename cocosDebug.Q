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
UEsDBBQAAgAIAJhYnEfloQK/xwIAAAgeAAAJABEAVUlQYWNrYWdlVVQNAAcsF4FWLBeBViwXgVbtWM1u00AQ/jZJ89OmaZv+l4Jy4U7vCKmtqKiUAmoCByQOoQ0oInEqJxXlgngF3gAegSeAI+ICvAFI3LhEHHojYdZZN0vVUs+uwRTlsyabOB5/O7O7s58dRx8fP0x9fvV66QuO4Rri6PYySGrnhDIPk0BM/e72ej3/dG+Ic4UfZAk1hilqR8jkmKfJRskyZGNk42RZdV13mLb/Btto0tFGAdfhUOviKTiYoxnj30ucce3bl88ay6ufRJy+P1eF5Q42cQXmSEMInz92Bq/f6v+to4yiRQ9GFf+EWjtc/jLlew9V3EQFDWq5yFMV1sczqF9Ctf56/tM2xL+JjabbsFh+kP4rFv4CdrD1jxqdTieU+9yn4ndo4Gdadwb1j19/hFYr5a5TwQPUDfuQQ0xIfZJS2jOIT0yrf3dRQ4vMtAeTxJ/FQPcG8Ylr/NvEWsEublEe6sy9V9V/kURfqwXlT2j8ZeI/oH3fYvwFd/z154V1Uh91MtewJzMG829Ei3/Av0bjsIPHfH5Pz2QY+U8eG/8dy/xLbZ5m8Ke8edvHPZp5Ls2/Kn0arj92/tNa/EXKPT/rv8afU/cLyp/R+DeI37HLPzt+uVavHs0/qT9XLPjFEX/+lGt+pz+jxuHJOfP6uFUqlCpOq1CqurWHp/hvOnv77bXmgSm/7286Auddv4Tw/OHV/2XG+htTNUAiCv2RVTVAIgz9sQC5DwSPfxzh6o9Fai8y+HMIV39MUzvP4J9AtPpD7n0p9T0E/eHxX2LEP4VQ9YcXzxyDP6/xv//67tub7zZPcHZgvLI4ETfUfH5BdtnAP+r6a7v/2SIM/blE7Sxj/k0jWv05g3D15wW1poPyzyJa/Slrha8/V6n61PCI+iB3YeevPH/Na/HfpqrXouOJVwN32fGbvP9c0Pi3sE8ZaFMOimQOew82iX9R4w8DJu9/hxhC4idQSwECFwsUAAIACACYWJxH5aECv8cCAAAIHgAACQAJAAAAAAAAAAAAAIAAAAAAVUlQYWNrYWdlVVQFAAcsF4FWUEsFBgAAAAABAAEAQAAAAP8CAAAAAA==


[Script]
UserVar Yanshi=5 "—” ±£®√Î£©"
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

Rect = Plugin.Window.GetWindowRect(winChrome)
arrRect = Split(Rect, "|")
//GetColor = GetPixelColor(arrRect(0) + mX, arrRect(1) + mY)

Do
	IfColor (arrRect(0) + mX), (arrRect(1) + mY),  "F9F5F5", 2 Then
//		Msgbox "GetWindowRect="
		Exit Do
	End If
	Delay 100
Loop

Call Plugin.Bkgnd.LeftClick(winChrome, 640, 614)
Beep
Call Plugin.Window.Active(winCur)
