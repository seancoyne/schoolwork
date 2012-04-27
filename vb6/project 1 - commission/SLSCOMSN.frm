VERSION 5.00
Begin VB.Form SLSCOMSN 
   Caption         =   "Calculating Sales Commission"
   ClientHeight    =   3600
   ClientLeft      =   8175
   ClientTop       =   5250
   ClientWidth     =   4140
   LinkTopic       =   "Form1"
   ScaleHeight     =   3600
   ScaleWidth      =   4140
   Begin VB.CommandButton Command1 
      Caption         =   "CALCULATE"
      Height          =   495
      Left            =   1440
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1920
      TabIndex        =   2
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "COMMISSION:"
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "SALES:"
      Height          =   735
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "SLSCOMSN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
'display commission amount as value of user input * rate
Text2.Text = Val(Text1.Text) * 0.15
Text1.SetFocus

End Sub

