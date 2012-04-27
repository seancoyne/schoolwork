VERSION 5.00
Begin VB.Form frmWireGram 
   Caption         =   "Wire-Gram"
   ClientHeight    =   4950
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6345
   LinkTopic       =   "Form1"
   ScaleHeight     =   4950
   ScaleWidth      =   6345
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtMessage 
      Height          =   4455
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   360
      Width           =   4455
   End
   Begin VB.Label Label4 
      Caption         =   "$0.02 for each additional character"
      Height          =   735
      Left            =   4800
      TabIndex        =   6
      Top             =   2760
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "$4.20 for first 100 characters."
      Height          =   555
      Left            =   4800
      TabIndex        =   5
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Shape Shape2 
      Height          =   2775
      Left            =   4680
      Top             =   2040
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      Height          =   1575
      Left            =   4680
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Total Characters"
      Height          =   195
      Left            =   4800
      TabIndex        =   4
      Top             =   480
      Width           =   1170
   End
   Begin VB.Label lblTotChar 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   4800
      TabIndex        =   3
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Total Cost"
      Height          =   195
      Left            =   4800
      TabIndex        =   2
      Top             =   1200
      Width           =   720
   End
   Begin VB.Label lblTotCost 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   4800
      TabIndex        =   1
      Top             =   1440
      Width           =   1335
   End
End
Attribute VB_Name = "frmWireGram"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub txtMessage_Change()
lblTotChar.Caption = Len(txtMessage.Text)
If Len(txtMessage.Text) <= 100 Then
    lblTotCost.Caption = Format$(4.2, "currency")
ElseIf Len(txtMessage.Text) > 100 Then
    lblTotCost.Caption = Format$((4.2 + ((Len(txtMessage.Text) - 100) * 0.02)), "currency")
End If
End Sub
