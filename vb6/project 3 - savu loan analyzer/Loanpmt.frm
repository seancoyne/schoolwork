VERSION 5.00
Begin VB.Form frmLoanpmt 
   Caption         =   "SavU Loan Analyzer"
   ClientHeight    =   4755
   ClientLeft      =   6585
   ClientTop       =   4680
   ClientWidth     =   4725
   Icon            =   "Loanpmt.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4755
   ScaleWidth      =   4725
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About..."
      Height          =   495
      Left            =   3000
      TabIndex        =   14
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      Height          =   495
      Left            =   3000
      TabIndex        =   13
      Top             =   3180
      Width           =   1215
   End
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   3000
      TabIndex        =   12
      Top             =   2400
      Width           =   1215
   End
   Begin VB.HScrollBar hsbYears 
      Height          =   255
      LargeChange     =   5
      Left            =   360
      Max             =   30
      Min             =   1
      TabIndex        =   11
      Top             =   4080
      Value           =   1
      Width           =   1695
   End
   Begin VB.HScrollBar hsbRate 
      Height          =   255
      LargeChange     =   10
      Left            =   360
      Max             =   1500
      Min             =   1
      TabIndex        =   10
      Top             =   3000
      Value           =   1
      Width           =   1695
   End
   Begin VB.TextBox txtAmount 
      Alignment       =   1  'Right Justify
      Height          =   405
      Left            =   360
      TabIndex        =   9
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "SUM OF PAYMENTS"
      Height          =   195
      Left            =   2760
      TabIndex        =   8
      Top             =   1320
      Width           =   1545
   End
   Begin VB.Label lblPayment 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   435
      Left            =   2760
      TabIndex        =   7
      Top             =   720
      Width           =   1320
   End
   Begin VB.Label lblSumpmts 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   2760
      TabIndex        =   6
      Top             =   1560
      Width           =   1320
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "MONTHLY PAYMENT"
      Height          =   195
      Left            =   2760
      TabIndex        =   5
      Top             =   480
      Width           =   1620
   End
   Begin VB.Label lblYears 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "1"
      Height          =   195
      Left            =   1950
      TabIndex        =   4
      Top             =   3480
      Width           =   90
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "YEARS"
      Height          =   195
      Left            =   360
      TabIndex        =   3
      Top             =   3480
      Width           =   540
   End
   Begin VB.Label lblRate 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   ".01"
      Height          =   195
      Left            =   1815
      TabIndex        =   2
      Top             =   2400
      Width           =   225
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "APR"
      Height          =   195
      Left            =   360
      TabIndex        =   1
      Top             =   2400
      Width           =   330
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "LOAN AMOUNT"
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   1185
   End
   Begin VB.Shape Shape3 
      Height          =   2295
      Left            =   2520
      Top             =   2280
      Width           =   2055
   End
   Begin VB.Shape Shape2 
      Height          =   1935
      Left            =   2520
      Top             =   240
      Width           =   2055
   End
   Begin VB.Shape Shape1 
      Height          =   4335
      Left            =   120
      Top             =   240
      Width           =   2175
   End
End
Attribute VB_Name = "frmLoanpmt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAbout_Click()
    'display modal about dialog form
    frmLoanabt.Show 1
End Sub

Private Sub cmdCalculate_Click()
    'if amount is not a number, then message else perform calculations
    If IsNumeric(txtAmount.Text) = False Then
        MsgBox "Please Enter Loan Amount In Numbers Only", 48, "SavU Loan Analyzer"
        txtAmount.Text = ""
        txtAmount.SetFocus
    Else
        monthlypmt = Pmt(0.0001 * hsbRate.Value / 12, hsbYears.Value * 12, -1 * txtAmount.Text, 0, 1)
        lblPayment.Caption = Format$(monthlypmt, "currency")
        lblSumpmts.Caption = Format$(monthlypmt * hsbYears.Value * 12, "currency")
    End If
End Sub

Private Sub cmdClear_Click()
    'clear input amount and outputs; reset scrollbars to minimums
   
    hsbYears.Value = 1
    hsbRate.Value = 1
    lblPayment.Caption = ""
    lblSumpmts.Caption = ""
    txtAmount.Text = ""
    txtAmount.SetFocus
End Sub

Private Sub hsbRate_Change()
    'update lblRate caption when scrollbox is moved
    lblRate.Caption = hsbRate.Value * 0.01
    
    'update calculations on scrollbar change
        If IsNumeric(txtAmount.Text) = False Then
        MsgBox "Please Enter Loan Amount In Numbers Only", 48, "SavU Loan Analyzer"
        txtAmount.Text = ""
        txtAmount.SetFocus
    Else
        monthlypmt = Pmt(0.0001 * hsbRate.Value / 12, hsbYears.Value * 12, -1 * txtAmount.Text, 0, 1)
        lblPayment.Caption = Format$(monthlypmt, "currency")
        lblSumpmts.Caption = Format$(monthlypmt * hsbYears.Value * 12, "currency")
    End If
End Sub

Private Sub hsbRate_Scroll()
    'update lblRate caption when scrollbox is moved
    lblRate.Caption = hsbRate.Value * 0.01
    
    'update calculations on scrollbar change
        If IsNumeric(txtAmount.Text) = False Then
        MsgBox "Please Enter Loan Amount In Numbers Only", 48, "SavU Loan Analyzer"
        txtAmount.Text = ""
        txtAmount.SetFocus
    Else
        monthlypmt = Pmt(0.0001 * hsbRate.Value / 12, hsbYears.Value * 12, -1 * txtAmount.Text, 0, 1)
        lblPayment.Caption = Format$(monthlypmt, "currency")
        lblSumpmts.Caption = Format$(monthlypmt * hsbYears.Value * 12, "currency")
    End If
End Sub

Private Sub hsbYears_Change()
    'update lblYears caption when scrollbox is moved
    lblYears.Caption = hsbYears.Value
    
    'update calculations on scrollbar change
        If IsNumeric(txtAmount.Text) = False Then
        MsgBox "Please Enter Loan Amount In Numbers Only", 48, "SavU Loan Analyzer"
        txtAmount.Text = ""
        txtAmount.SetFocus
    Else
        monthlypmt = Pmt(0.0001 * hsbRate.Value / 12, hsbYears.Value * 12, -1 * txtAmount.Text, 0, 1)
        lblPayment.Caption = Format$(monthlypmt, "currency")
        lblSumpmts.Caption = Format$(monthlypmt * hsbYears.Value * 12, "currency")
    End If
End Sub

Private Sub hsbYears_Scroll()
    'update lblYears caption when scrollbox is moved
    lblYears.Caption = hsbYears.Value
    
    'update calculations on scrollbar change
        If IsNumeric(txtAmount.Text) = False Then
        MsgBox "Please Enter Loan Amount In Numbers Only", 48, "SavU Loan Analyzer"
        txtAmount.Text = ""
        txtAmount.SetFocus
    Else
        monthlypmt = Pmt(0.0001 * hsbRate.Value / 12, hsbYears.Value * 12, -1 * txtAmount.Text, 0, 1)
        lblPayment.Caption = Format$(monthlypmt, "currency")
        lblSumpmts.Caption = Format$(monthlypmt * hsbYears.Value * 12, "currency")
    End If
End Sub
