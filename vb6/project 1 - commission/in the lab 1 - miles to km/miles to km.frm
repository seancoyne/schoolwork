VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Convert Miles to Kilometers"
   ClientHeight    =   4020
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5010
   LinkTopic       =   "Form1"
   ScaleHeight     =   4020
   ScaleWidth      =   5010
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "CONVERT"
      Height          =   615
      Left            =   1920
      TabIndex        =   4
      Top             =   3000
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   2880
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   2880
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "KILOMETERS:"
      Height          =   615
      Left            =   720
      TabIndex        =   1
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "MILES:"
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text2.Text = Val(Text1.Text) * 1.61
End Sub
