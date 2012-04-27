VERSION 5.00
Begin VB.Form frmHelp 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Math Tutor Help"
   ClientHeight    =   4140
   ClientLeft      =   7050
   ClientTop       =   5640
   ClientWidth     =   6180
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4140
   ScaleWidth      =   6180
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   4800
      TabIndex        =   0
      Top             =   3600
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   $"frmHelp.frx":0000
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1755
      Left            =   375
      TabIndex        =   2
      Top             =   960
      Width           =   5430
   End
   Begin VB.Label Label1 
      Caption         =   "Math Tutor"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "frmHelp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
Unload Me

End Sub
