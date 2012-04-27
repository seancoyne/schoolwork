VERSION 5.00
Begin VB.Form frmIntroduction 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tic Tac Toe"
   ClientHeight    =   2640
   ClientLeft      =   8355
   ClientTop       =   5070
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2640
   ScaleWidth      =   4680
   Begin VB.CommandButton cmdGo 
      Caption         =   "Go!"
      Height          =   615
      Left            =   1920
      TabIndex        =   2
      Top             =   1560
      Width           =   1095
   End
   Begin VB.TextBox txtNumPlayers 
      Height          =   285
      Left            =   3173
      TabIndex        =   1
      Top             =   600
      Width           =   375
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "How Many Players? (1 or 2)"
      Height          =   195
      Left            =   1140
      TabIndex        =   0
      Top             =   600
      Width           =   1950
   End
End
Attribute VB_Name = "frmIntroduction"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGo_Click()
If Val(txtNumPlayers.Text) < 1 Or Val(txtNumPlayers.Text) > 2 Then
    MsgBox "Enter either 1 or 2 please.", vbOKOnly, "Tic Tac Toe"
Else
    frmTicTacToe.Show
    frmIntroduction.Hide
End If
End Sub
