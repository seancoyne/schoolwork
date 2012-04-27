VERSION 5.00
Begin VB.Form frmMathTutor 
   Caption         =   "Math Tutor"
   ClientHeight    =   3915
   ClientLeft      =   7065
   ClientTop       =   5655
   ClientWidth     =   6630
   LinkTopic       =   "Form1"
   ScaleHeight     =   3915
   ScaleWidth      =   6630
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      Height          =   375
      Left            =   2640
      TabIndex        =   6
      Top             =   3360
      Width           =   1575
   End
   Begin VB.CheckBox chkDivide 
      Caption         =   "Divide"
      Height          =   375
      Left            =   5160
      TabIndex        =   5
      Top             =   2520
      Width           =   975
   End
   Begin VB.CheckBox chkMultiply 
      Caption         =   "Multiply"
      Height          =   375
      Left            =   3480
      TabIndex        =   4
      Top             =   2520
      Width           =   975
   End
   Begin VB.CheckBox chkSubtract 
      Caption         =   "Subtract"
      Height          =   375
      Left            =   1920
      TabIndex        =   3
      Top             =   2520
      Width           =   975
   End
   Begin VB.CheckBox chkAdd 
      Caption         =   "Add"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox txtNumber2 
      Height          =   615
      Left            =   3960
      TabIndex        =   1
      Top             =   240
      Width           =   1935
   End
   Begin VB.TextBox txtNumber1 
      Height          =   615
      Left            =   720
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label lblDivision 
      Caption         =   "Division"
      Height          =   495
      Left            =   5160
      TabIndex        =   10
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label lblMultiplication 
      Caption         =   "Multiplication"
      Height          =   495
      Left            =   3480
      TabIndex        =   9
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label lblSubtraction 
      Caption         =   "Subtraction"
      Height          =   495
      Left            =   1920
      TabIndex        =   8
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label lblAddition 
      Caption         =   "Addition"
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuCalc 
      Caption         =   "&Calculate"
      Begin VB.Menu mnuAdd 
         Caption         =   "&Add"
      End
      Begin VB.Menu mnuSub 
         Caption         =   "&Subtract"
      End
      Begin VB.Menu mnuMult 
         Caption         =   "&Multiply"
      End
      Begin VB.Menu mnuDivide 
         Caption         =   "&Divide"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelp2 
         Caption         =   "&Help"
      End
      Begin VB.Menu mnuAbout 
         Caption         =   "&About Math Tutor..."
      End
   End
End
Attribute VB_Name = "frmMathTutor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub chkAdd_Click()
mnuAdd.Checked = Not mnuAdd.Checked
End Sub

Private Sub chkDivide_Click()
mnuDivide.Checked = Not mnuDivide.Checked
End Sub

Private Sub chkMultiply_Click()
mnuMult.Checked = Not mnuMult.Checked
End Sub

Private Sub chkSubtract_Click()
mnuSub.Checked = Not mnuSub.Checked
End Sub

Private Sub cmdCalculate_Click()
'check to see if numbers are numeric and if they are calculate
If IsNumeric(txtNumber1.Text) And IsNumeric(txtNumber2.Text) Then
    If chkAdd.Value = 1 Then
        lblAddition.Caption = (Val(txtNumber1.Text) + Val(txtNumber2.Text))
    End If
    If chkDivide.Value = 1 Then
        'check if dividing by zero
        If Val(txtNumber2.Text) = 0 Then
            MsgBox "You cannot divide by zero", vbCritical, "Divide By Zero"
        Else
            lblDivision.Caption = (Val(txtNumber1.Text) / Val(txtNumber2.Text))
        End If
    End If
    If chkMultiply.Value = 1 Then
        lblMultiplication.Caption = (Val(txtNumber1.Text) * Val(txtNumber2.Text))
    End If
    If chkSubtract.Value = 1 Then
        lblSubtraction.Caption = (Val(txtNumber1.Text) - Val(txtNumber2.Text))
    End If
Else
    MsgBox "Please enter numbers only", vbCritical, "Please Enter Numbers"
End If
End Sub

Private Sub mnuAbout_Click()
frmAbout.Show
End Sub

Private Sub mnuAdd_Click()
If mnuAdd.Checked = False Then
    chkAdd.Value = 1
    mnuAdd.Checked = True
Else
    chkAdd.Value = 0
    mnuAdd.Checked = False
End If
End Sub

Private Sub mnuDivide_Click()
If mnuDivide.Checked = False Then
    chkDivide.Value = 1
    mnuDivide.Checked = True
Else
    chkDivide.Value = 0
    mnuDivide.Checked = False
End If
End Sub

Private Sub mnuExit_Click()
'exit application
End
End Sub

Private Sub mnuHelp2_Click()
frmHelp.Show
End Sub

Private Sub mnuMult_Click()
If mnuMult.Checked = False Then
    chkMultiply.Value = 1
    mnuMult.Checked = True
Else
    chkMultiply.Value = 0
    mnuMult.Checked = False
End If
End Sub

Private Sub mnuSub_Click()
If mnuSub.Checked = False Then
    chkSubtract.Value = 1
    mnuSub.Checked = True
Else
    chkSubtract.Value = 0
    mnuSub.Checked = False
End If
End Sub

