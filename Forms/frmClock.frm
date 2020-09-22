VERSION 5.00
Begin VB.Form frmClock 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "ClockDemo"
   ClientHeight    =   4716
   ClientLeft      =   36
   ClientTop       =   324
   ClientWidth     =   4692
   Icon            =   "frmClock.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4716
   ScaleWidth      =   4692
   StartUpPosition =   2  'CenterScreen
   Begin vb6projectClock.Clock Clock1 
      Height          =   2172
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2172
      _ExtentX        =   3831
      _ExtentY        =   3831
      BackStyle       =   0
      ClockPlateBorderColor=   12632064
      ClockPlateColor =   8421376
      ClockPlateGradientStyle=   1
      DigitsBackStyle =   0
      DigitsForeColor =   8388736
      DigitsPosition  =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   7.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      HandsHourMinuteStyle=   1
   End
   Begin vb6projectClock.Clock Clock1 
      Height          =   2172
      Index           =   1
      Left            =   2400
      TabIndex        =   1
      Top             =   120
      Width           =   2172
      _ExtentX        =   3831
      _ExtentY        =   3831
      BackColor       =   14737632
      ClockPlateBorder=   0   'False
      ClockPlateColor =   12632256
      ClockPlateGradientPosition=   0
      ClockPlateGradientStyle=   1
      DateStyle       =   3
      DigitsPosition  =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   7.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NameBackStyle   =   0
      NameClock       =   "Next Clock"
      NameForeColor   =   12582912
      NamePosition    =   2
   End
   Begin vb6projectClock.Clock Clock1 
      Height          =   2172
      Index           =   2
      Left            =   120
      TabIndex        =   2
      Top             =   2400
      Width           =   2172
      _ExtentX        =   3831
      _ExtentY        =   3831
      ClockHoursColor =   12582912
      ClockMirrored   =   3
      ClockPlateBorderColor=   32896
      ClockPlateStyle =   1
      DigitsAmPm      =   0   'False
      DigitsBackStyle =   0
      DigitsForeColor =   192
      DigitsPosition  =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   7.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      HandsHourMinuteStyle=   3
   End
   Begin vb6projectClock.Clock Clock1 
      Height          =   2172
      Index           =   3
      Left            =   2400
      TabIndex        =   3
      Top             =   2400
      Width           =   2172
      _ExtentX        =   3831
      _ExtentY        =   3831
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   7.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      HandsHourMinuteStyle=   2
      NameBackColor   =   16777088
      NameBorderStyle =   1
      NameClock       =   "Last Clock"
      NameForeColor   =   8421376
      NamePosition    =   1
   End
End
Attribute VB_Name = "frmClock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()

Dim intCount As Integer

   Clock1.Item(0).TimeZoneValue = -33
   
   For intCount = 0 To 3
      Clock1.Item(intCount).SetTime = DateAdd("h", Rnd * 10, Time)
      Clock1.Item(intCount).Active = True
   Next 'intCount

End Sub
