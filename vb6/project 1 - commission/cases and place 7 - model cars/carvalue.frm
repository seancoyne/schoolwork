VERSION 5.00
Begin VB.Form frmCarValue 
   Caption         =   "Classic Car Value Calculation"
   ClientHeight    =   3570
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3765
   LinkTopic       =   "Form1"
   ScaleHeight     =   3570
   ScaleWidth      =   3765
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   1275
      TabIndex        =   8
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox txtTime 
      Height          =   285
      Left            =   2055
      TabIndex        =   2
      Top             =   1455
      Width           =   1215
   End
   Begin VB.TextBox txtRate 
      Height          =   285
      Left            =   2055
      TabIndex        =   1
      Top             =   855
      Width           =   1215
   End
   Begin VB.TextBox txtCurrentVal 
      Height          =   285
      Left            =   2055
      TabIndex        =   0
      Top             =   255
      Width           =   1215
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Future Value"
      Height          =   195
      Left            =   495
      TabIndex        =   7
      Top             =   2055
      Width           =   900
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Time (years)"
      Height          =   195
      Left            =   495
      TabIndex        =   6
      Top             =   1455
      Width           =   855
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Rate of Appreciation"
      Height          =   195
      Left            =   495
      TabIndex        =   5
      Top             =   855
      Width           =   1455
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Current Value"
      Height          =   195
      Left            =   495
      TabIndex        =   4
      Top             =   255
      Width           =   960
   End
   Begin VB.Label lblFutureVal 
      BorderStyle     =   1  'Fixed Single
      Height          =   240
      Left            =   2055
      TabIndex        =   3
      Top             =   2055
      Width           =   1215
   End
End
Attribute VB_Name = "frmCarValue"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCalculate_Click()
lblFutureVal.Caption = (Val(txtCurrentVal.Text) + (Val(txtCurrentVal.Text) * Val(txtRate.Text))) * Val(txtTime.Text)
End Sub
