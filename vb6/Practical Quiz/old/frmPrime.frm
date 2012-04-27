VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmPrime 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   4845
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6585
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4845
   ScaleWidth      =   6585
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdReset 
      Caption         =   "Reset"
      Height          =   495
      Left            =   3720
      TabIndex        =   5
      Top             =   240
      Width           =   975
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   375
      Left            =   600
      TabIndex        =   4
      Top             =   4320
      Visible         =   0   'False
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   661
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   2520
      TabIndex        =   3
      Top             =   240
      Width           =   975
   End
   Begin VB.TextBox txtResults 
      Height          =   3135
      Left            =   960
      MultiLine       =   -1  'True
      TabIndex        =   2
      Top             =   960
      Width           =   4575
   End
   Begin VB.TextBox txtUpperLimit 
      Height          =   375
      Left            =   1320
      TabIndex        =   0
      Top             =   240
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Upper Limit"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   240
      Width           =   1095
   End
End
Attribute VB_Name = "frmPrime"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCalculate_Click()
Dim prime As Boolean
    If IsNumeric(txtUpperLimit.Text) Then
        ProgressBar1.Min = 0
        ProgressBar1.Max = Val(txtUpperLimit.Text)
        ProgressBar1.Value = 0
        ProgressBar1.Visible = True
        'calculations
        For x = 1 To Val(txtUpperLimit.Text)
            'test for prime
            
            'output
            If prime = True Then
               txtResults.Text = x & vbNewLine
            End If
            ProgressBar1.Value = x
        Next
    Else
        'error checking
        MsgBox "Please Enter a Number.", vbCritical, "Prime Numbers"
        txtUpperLimit.Text = ""
    End If
End Sub

Private Sub cmdReset_Click()
    'reset all controls
    txtUpperLimit.Text = ""
    txtResults.Text = ""
    ProgressBar1.Visible = False
    ProgressBar1.Value = 0
End Sub
