VERSION 5.00
Begin VB.Form frmLoanabt 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "About SavU Loan Analyzer"
   ClientHeight    =   3450
   ClientLeft      =   6300
   ClientTop       =   5070
   ClientWidth     =   5430
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3450
   ScaleWidth      =   5430
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   3960
      TabIndex        =   3
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      X1              =   960
      X2              =   4560
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   240
      Picture         =   "Loanabt.frx":0000
      Top             =   240
      Width           =   480
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Label3"
      Height          =   195
      Left            =   1080
      TabIndex        =   2
      Top             =   2280
      Width           =   480
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Label2"
      Height          =   195
      Left            =   1080
      TabIndex        =   1
      Top             =   1080
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      Height          =   195
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   480
   End
End
Attribute VB_Name = "frmLoanabt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    'remove about dialog form
    Unload frmLoanabt
End Sub

Private Sub Form_Load()
    'create captions for labels
    Label1.Caption = "SavU National Bank Loan Analyzer" & vbNewLine & _
                     "Operating System 98" & vbNewLine & _
                     "Copyright 1999 SavU National Bank Corp."
    Label2.Caption = "Developed for SavU National Bank" & vbNewLine & _
                     "By Sean Coyne"
    Label3.Caption = "Warning: This computer program is protected by" & vbNewLine & _
                     "copyright law and international treaties."
End Sub
