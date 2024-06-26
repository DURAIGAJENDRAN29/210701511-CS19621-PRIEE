﻿Type=Activity
Version=4.3
ModulesStructureVersion=1
B4A=true
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: True
	#IncludeTitle: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private btnBooks As Button
	Private btnAbout As Button
	Private btnHelp As Button
	'Dim TTS As ICOSTextToSpeech
	Private Panel1 As Panel
	Private ImageView1 As ImageView
	Private ImageView2 As ImageView
	Private Label1 As Label
	Private Label2 As Label
	Private Label3 As Label
	Private Label4 As Label
	Private Label5 As Label
	Private ImageView3 As ImageView
	Private btnView As Button
	Private btnUrban1 As Button
	Private btnUrban2 As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("Main")
	'TTS.InitializeTTs("tts", "English")
	'resize

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub



Sub btnBooks_Click
    'TTS.Speaking("You choose Books Category!")
	Main.clicksound.play
	StartActivity("ViewMap")
End Sub
Sub btnAbout_Click
	Main.clicksound.play
	'ImageView2.Width = 100%x
	ImageView1.Visible = True
	Panel1.Visible = True
	Label1.TextColor = Colors.black
	Label1.TextSize = 20
	Label1.Text = "GIS Application provides Flood Monitoring and Disease Outbreak Information in Tandag."
	Label1.Visible = True
	
	Label2.Visible = False
	Label3.Visible = False
	Label4.Visible = False
	Label5.Visible = False
	
	btnBooks.Left = 0%x
btnBooks.Width = 100%x

btnHelp.Left = 0%x
btnHelp.Width = 100%x

btnUrban1.Left = 0%x
btnUrban1.Width = 100%x

btnUrban2.Left = 0%x
btnUrban2.Width = 100%x

btnView.Left = 0%x
btnView.Width = 100%x

btnAbout.Left = 0%x
btnAbout.Width = 100%x
	
End Sub
Sub btnHelp_Click
	Main.clicksound.play
	StartActivity("ViewFlood")
End Sub

Sub Activity_KeyPress (KeyCode As Int) As Boolean
  If KeyCode = KeyCodes.KEYCODE_BACK OR Panel1.Visible = False Then  
    'TTS.Speaking("Are you sure you want to quit")
    Select Msgbox2("Are you sure you want to quit?", "", "OK", "","Cancel", Null)
    Case DialogResponse.NEGATIVE
      Return True
    Case DialogResponse.CANCEL
      Return True
    Case DialogResponse.POSITIVE
	Main.TTS.Speak("Thank you for using our GIS Application!", True)
	 Msgbox("Thank you for using our GIS Application!","")
	Activity.Finish
    End Select
	
  Else If KeyCode = KeyCodes.KEYCODE_BACK OR Panel1.Visible = True Then 
  
  Panel1.Visible = False
  StartActivity("Book")
  End If
  End Sub
  
  Sub resize
  
  btnBooks.Left = 37%x
   btnAbout.Left =  37%x
  btnHelp.Left =  37%x
  
  btnBooks.Top = 30%y
   btnAbout.Top = 40%y
	btnHelp.Top = 49.5%y
	
	Panel1.Top = 10%y
	Panel1.Height = 80%y
	Panel1.left = 10%x
	Panel1.Width = 80%x
	
  End Sub
Sub ImageView2_Click
	Panel1.Visible = False
	'Label1.Text= ""
	'Label1.Visible = False
End Sub

Sub btnView_Click
	Main.clicksound.play
	StartActivity("geoLocation")
End Sub
Sub btnUrban1_Click
	Main.clicksound.play
	StartActivity("ViewUrban1")
End Sub
Sub btnUrban2_Click
	Main.clicksound.play
	StartActivity("ViewUrban2")
End Sub