VERSION 5.00
Begin VB.Form frmMarkUp 
   Caption         =   "Mannequin Clothing"
   ClientHeight    =   2655
   ClientLeft      =   7185
   ClientTop       =   5460
   ClientWidth     =   4815
   LinkTopic       =   "Form1"
   ScaleHeight     =   2655
   ScaleWidth      =   4815
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      Height          =   495
      Left            =   3360
      TabIndex        =   10
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   3360
      TabIndex        =   9
      Top             =   1200
      Width           =   1215
   End
   Begin VB.HScrollBar hsbMarkUp 
      Height          =   255
      LargeChange     =   5
      Left            =   1680
      Max             =   100
      TabIndex        =   1
      Top             =   600
      Width           =   2775
   End
   Begin VB.TextBox txtCost 
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
   Begin VB.Shape Shape3 
      Height          =   855
      Left            =   120
      Top             =   120
      Width           =   4575
   End
   Begin VB.Shape Shape2 
      Height          =   1455
      Left            =   3240
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Shape Shape1 
      Height          =   1455
      Left            =   120
      Top             =   1080
      Width           =   3015
   End
   Begin VB.Label lblMarkUp 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Left            =   3240
      TabIndex        =   8
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Mark Up (%)"
      Height          =   195
      Left            =   1680
      TabIndex        =   7
      Top             =   240
      Width           =   870
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Gross Profit"
      Height          =   195
      Left            =   1800
      TabIndex        =   6
      Top             =   1320
      Width           =   810
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Selling Price"
      Height          =   195
      Left            =   240
      TabIndex        =   5
      Top             =   1320
      Width           =   870
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Cost"
      Height          =   195
      Left            =   240
      TabIndex        =   4
      Top             =   240
      Width           =   315
   End
   Begin VB.Label lblGross 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   1800
      TabIndex        =   3
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label lblSell 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   1560
      Width           =   1215
   End
End
Attribute VB_Name = "frmMarkUp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCalculate_Click()
If IsNumeric(txtCost.Text) = False Then
    MsgBox "Please Enter Cost as a Number.", vbOKOnly, "Mannequin Clothing"
ElseIf txtCost.Text = "" Then
    MsgBox "Please Enter a Cost.", vbOKOnly, "Mannequin Clothing"
Else
    lblSell.Caption = Format$(txtCost.Text + (txtCost.Text * lblMarkUp), "currency")
    lblGross.Caption = Format$(lblSell.Caption - txtCost.Text, "currency")
End If
End Sub

Private Sub cmdClear_Click()
    txtCost.Text = ""
    hsbMarkUp.Value = 0
    lblSell.Caption = ""
    lblGross.Caption = ""
End Sub

Private Sub hsbMarkUp_Change()
    'change markup value
    lblMarkUp.Caption = hsbMarkUp / 100
End Sub

Private Sub hsbMarkUp_Scroll()
    'change markup value
    lblMarkUp.Caption = hsbMarkUp / 100
End Sub
