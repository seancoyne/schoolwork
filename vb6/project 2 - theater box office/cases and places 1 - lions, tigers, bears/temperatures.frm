VERSION 5.00
Begin VB.Form temperature 
   Caption         =   "Lions, Tigers, and Bears"
   ClientHeight    =   3390
   ClientLeft      =   7350
   ClientTop       =   5085
   ClientWidth     =   4035
   LinkTopic       =   "Form1"
   ScaleHeight     =   3390
   ScaleWidth      =   4035
   Begin VB.OptionButton optFarAbove 
      Caption         =   "Far Above"
      Height          =   495
      Left            =   360
      TabIndex        =   5
      Top             =   2400
      Width           =   1095
   End
   Begin VB.OptionButton optSlightA 
      Caption         =   "Slightly Above"
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   2040
      Width           =   1335
   End
   Begin VB.OptionButton optNormal 
      Caption         =   "Normal"
      Height          =   495
      Left            =   360
      TabIndex        =   3
      Top             =   1680
      Width           =   855
   End
   Begin VB.OptionButton optSlight 
      Caption         =   "Slightly Below"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   1320
      Width           =   1335
   End
   Begin VB.OptionButton optFarBelow 
      Caption         =   "Far Below"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   960
      Width           =   1095
   End
   Begin VB.Frame fraTemp 
      Caption         =   "Temperature"
      Height          =   2415
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Temperature"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   3855
   End
   Begin VB.Shape shpTemp 
      BackStyle       =   1  'Opaque
      Height          =   500
      Left            =   2640
      Top             =   1440
      Width           =   100
   End
End
Attribute VB_Name = "temperature"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub optFarBelow_Click()
shpTemp.BackColor = vbCyan
shpTemp.Width = 100
End Sub

Private Sub optSlight_Click()
shpTemp.BackColor = vbBlue
shpTemp.Width = 250
End Sub

Private Sub optNormal_Click()
shpTemp.BackColor = vbMagenta
shpTemp.Width = 350
End Sub

Private Sub optSlightA_Click()
shpTemp.BackColor = vbYellow
shpTemp.Width = 450
End Sub

Private Sub optFarAbove_Click()
shpTemp.BackColor = vbRed
shpTemp.Width = 550
End Sub
