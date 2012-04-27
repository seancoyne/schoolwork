VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Maturity Calculator"
   ClientHeight    =   4170
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4710
   LinkTopic       =   "Form1"
   ScaleHeight     =   4170
   ScaleWidth      =   4710
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   375
      Left            =   2520
      TabIndex        =   8
      Top             =   2280
      Width           =   1335
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   3000
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   2520
      TabIndex        =   6
      Top             =   1560
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   1080
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   2520
      TabIndex        =   4
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "Maturity Value ($)"
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   3000
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Number of Years"
      Height          =   255
      Left            =   600
      TabIndex        =   2
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Interest Rate (%)"
      Height          =   255
      Left            =   600
      TabIndex        =   1
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Investment ($)"
      Height          =   255
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text4.Text = Format$(Val(Text1.Text) * (1 + Val(Text2.Text) / 400) ^ (4 * Val(Text3.Text)), "currency")
End Sub
