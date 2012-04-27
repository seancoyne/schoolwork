VERSION 5.00
Begin VB.Form frmMultiplication 
   Caption         =   "Multiplication"
   ClientHeight    =   2775
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   8280
   LinkTopic       =   "Form1"
   ScaleHeight     =   2775
   ScaleWidth      =   8280
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   0
      Left            =   2183
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   1
      Left            =   2783
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   2
      Left            =   3383
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   3
      Left            =   3983
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   4
      Left            =   4583
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   5
      Left            =   5183
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   6
      Left            =   5783
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   7
      Left            =   6383
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   8
      Left            =   6983
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   1755
      Width           =   495
   End
   Begin VB.TextBox txtAnswer 
      Height          =   285
      Index           =   9
      Left            =   7583
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   1755
      Width           =   495
   End
   Begin VB.HScrollBar hsbMultiplicand 
      Height          =   255
      LargeChange     =   2
      Left            =   233
      Max             =   9
      TabIndex        =   0
      Top             =   1770
      Width           =   735
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   9
      Left            =   7800
      TabIndex        =   36
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   8
      Left            =   7200
      TabIndex        =   35
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   7
      Left            =   6600
      TabIndex        =   34
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   6
      Left            =   6000
      TabIndex        =   33
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   5
      Left            =   5400
      TabIndex        =   32
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   4
      Left            =   4800
      TabIndex        =   31
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   3
      Left            =   4200
      TabIndex        =   30
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   2
      Left            =   3600
      TabIndex        =   29
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   1
      Left            =   3015
      TabIndex        =   28
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label lblEndResult 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   0
      Left            =   2415
      TabIndex        =   27
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "If correct the answer will turn green and you will receive confirmation.  "
      Height          =   195
      Left            =   1635
      TabIndex        =   26
      Top             =   360
      Width           =   4950
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Use scroll bar to choose the Multiplicand and then fill in the answers."
      Height          =   195
      Left            =   1635
      TabIndex        =   25
      Top             =   120
      Width           =   5010
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblResult 
      Alignment       =   2  'Center
      Height          =   255
      Index           =   0
      Left            =   2760
      TabIndex        =   24
      Top             =   2400
      Width           =   2775
   End
   Begin VB.Shape Shape2 
      Height          =   1455
      Left            =   120
      Top             =   720
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      Height          =   1455
      Left            =   2040
      Top             =   720
      Width           =   6135
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Multiplicand"
      Height          =   195
      Left            =   600
      TabIndex        =   23
      Top             =   840
      Width           =   840
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "0"
      Height          =   195
      Index           =   0
      Left            =   2385
      TabIndex        =   22
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "1"
      Height          =   195
      Index           =   1
      Left            =   2985
      TabIndex        =   21
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "2"
      Height          =   195
      Index           =   2
      Left            =   3585
      TabIndex        =   20
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "3"
      Height          =   195
      Index           =   3
      Left            =   4185
      TabIndex        =   19
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "4"
      Height          =   195
      Index           =   4
      Left            =   4785
      TabIndex        =   18
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "5"
      Height          =   195
      Index           =   5
      Left            =   5385
      TabIndex        =   17
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "6"
      Height          =   195
      Index           =   6
      Left            =   5985
      TabIndex        =   16
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "7"
      Height          =   195
      Index           =   7
      Left            =   6585
      TabIndex        =   15
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "8"
      Height          =   195
      Index           =   8
      Left            =   7185
      TabIndex        =   14
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplier 
      AutoSize        =   -1  'True
      Caption         =   "9"
      Height          =   195
      Index           =   9
      Left            =   7785
      TabIndex        =   13
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblMultiplicand 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Left            =   1080
      TabIndex        =   12
      Top             =   1770
      Width           =   735
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Multiplier"
      Height          =   195
      Left            =   4800
      TabIndex        =   11
      Top             =   840
      Width           =   615
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Begin VB.Menu mnuClear 
         Caption         =   "&Clear"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuShow 
         Caption         =   "&Show"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuQuiz 
         Caption         =   "&Quiz"
         Shortcut        =   ^Q
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
End
Attribute VB_Name = "frmMultiplication"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim wrongAnswer(9) As Integer

Private Sub cmdClear_Click()
    ClearResponses
End Sub


Private Sub hsbMultiplicand_Change()
    
    lblMultiplicand.Caption = hsbMultiplicand.Value
    For x = 0 To 9
        txtAnswer(x).Locked = False
        txtAnswer(x).Text = ""
        txtAnswer(x).BackColor = vbWhite
    Next
End Sub

Private Sub hsbMultiplicand_Scroll()
    lblMultiplicand.Caption = hsbMultiplicand.Value
    For x = 0 To 9
        txtAnswer(x).Locked = False
        txtAnswer(x).Text = ""
        txtAnswer(x).BackColor = vbWhite
    Next
    lblResult(0).Caption = ""
End Sub



Private Sub mnuExit_Click()
    End
End Sub

Private Sub mnuQuiz_Click()
Const Instruction$ = "Type the letter of the correct response and " & _
                     "click OK.  Click Cancel to skip this question." _
                     & vbNewLine & vbNewLine
Const Choice$ = vbNewLine & vbNewLine & "a. 30" & vbNewLine & _
                "b. 20" & vbNewLine & "c. 6" & vbNewLine & "d. 45" & vbNewLine & "e. 11"
Dim QuesNum%, Question$, CorrectAnswer$, Response$
'hide traffic form
frmMultiplication.Hide
'loop for three questions
For QuesNum% = 1 To 5
    'assign value to variable Question$ and variable CorrectAnswer$
    Select Case QuesNum%
        Case Is = 1
            Question$ = "1. What is 9 times 5?" & Choice$
            CorrectAnswer$ = "D"
        Case Is = 2
            Question$ = "2. Whhat is 6 times 5?" & Choice$
            CorrectAnswer$ = "A"
        Case Is = 3
            Question$ = "3. What is 10 times 2?" & Choice$
            CorrectAnswer$ = "B"
        Case Is = 4
            Question$ = "4. What is 3 times 2?" & Choice$
            CorrectAnswer$ = "C"
        Case Is = 5
            Question$ = "5. What is 11 times 1?" & Choice$
            CorrectAnswer$ = "E"
    End Select
    'display question; assign returned value to variable Response$
    Response$ = InputBox(Instruction$ & Question$, "Multiplication Table Quiz")
    'begin loop for correct answer or cancel button
    Do Until UCase$(Response$) = CorrectAnswer$ Or Response$ = ""
        'display message box for wrong answer
        MsgBox "Your response was not correct. Please try again", , _
               "Multiplication Table Quiz"
        'display question again
        Response$ = InputBox(Instruction$ & Question$, _
                    "Multiplication Table Quiz")
    Loop
'add 1 to counter in for...next loop
Next
'display main form after 5th question
frmMultiplication.Show

End Sub

Private Sub mnuShow_Click()
    
    For x = 0 To 9
        If txtAnswer(x).Locked = False Then
        txtAnswer(x).Text = Val(lblMultiplier(x).Caption) * Val(lblMultiplicand.Caption)
        End If
    Next
End Sub

Private Sub txtAnswer_Change(Index As Integer)
    If Val(txtAnswer(Index).Text) = Val(lblMultiplicand.Caption) * lblMultiplier(Index) Then
        txtAnswer(Index).BackColor = vbGreen
        lblResult(0).Caption = "CORRECT!!"
        txtAnswer(Index).Locked = True
        lblEndResult(Index).Caption = "C"
    Else
        txtAnswer(Index).BackColor = vbWhite
        wrongAnswer(Index) = wrongAnswer(Index) + 1
        lblResult(0).Caption = "Wrong " & wrongAnswer(Index) & " Times"
        If wrongAnswer(Index) = 3 Then
            lblResult(0).Caption = "Wrong 3 Times"
            txtAnswer(Index) = Val(lblMultiplicand.Caption) * lblMultiplier(Index)
            txtAnswer(Index).Locked = True
            lblEndResult(Index).Caption = "W"
        End If
        
    End If

End Sub
Public Sub ClearResponses()
    For x = 0 To 9
        txtAnswer(x).Text = ""
        txtAnswer(x).BackColor = vbWhite
    Next
    hsbMultiplicand.Value = 0
    lblMultiplicand.Caption = ""
    lblResult(0).Caption = ""
End Sub
