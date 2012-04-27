VERSION 5.00
Begin VB.Form frmTraffic 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Traffic Sign Tutorial"
   ClientHeight    =   4875
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   6960
   Icon            =   "Traffic.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4875
   ScaleWidth      =   6960
   StartUpPosition =   3  'Windows Default
   Begin VB.Image imgSign 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   4
      Left            =   1987
      Picture         =   "Traffic.frx":030A
      Top             =   840
      Width           =   480
   End
   Begin VB.Image imgContainer 
      BorderStyle     =   1  'Fixed Single
      Height          =   480
      Index           =   1
      Left            =   1987
      Top             =   2280
      Width           =   480
   End
   Begin VB.Image imgContainer 
      BorderStyle     =   1  'Fixed Single
      Height          =   480
      Index           =   0
      Left            =   709
      Top             =   2280
      Width           =   480
   End
   Begin VB.Image imgContainer 
      BorderStyle     =   1  'Fixed Single
      Height          =   480
      Index           =   2
      Left            =   3349
      Top             =   2280
      Width           =   480
   End
   Begin VB.Image imgContainer 
      BorderStyle     =   1  'Fixed Single
      Height          =   480
      Index           =   3
      Left            =   4560
      Top             =   2280
      Width           =   480
   End
   Begin VB.Image imgContainer 
      BorderStyle     =   1  'Fixed Single
      Height          =   480
      Index           =   4
      Left            =   5772
      Top             =   2280
      Width           =   480
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Divided Highway"
      Height          =   195
      Index           =   0
      Left            =   360
      TabIndex        =   5
      Top             =   3120
      Width           =   1200
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Stop"
      Height          =   195
      Index           =   1
      Left            =   2040
      TabIndex        =   4
      Top             =   3120
      Width           =   330
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Speed Limit"
      Height          =   195
      Index           =   2
      Left            =   3165
      TabIndex        =   3
      Top             =   3120
      Width           =   825
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Slippery Road"
      Height          =   195
      Index           =   3
      Left            =   4320
      TabIndex        =   2
      Top             =   3120
      Width           =   990
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Do Not Enter"
      Height          =   195
      Index           =   4
      Left            =   5520
      TabIndex        =   1
      Top             =   3120
      Width           =   930
   End
   Begin VB.Image imgSign 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   3
      Left            =   720
      Picture         =   "Traffic.frx":0614
      Top             =   840
      Width           =   480
   End
   Begin VB.Image imgSign 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   2
      Left            =   4560
      Picture         =   "Traffic.frx":091E
      Top             =   840
      Width           =   480
   End
   Begin VB.Image imgSign 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   1
      Left            =   5772
      Picture         =   "Traffic.frx":0C28
      Top             =   840
      Width           =   480
   End
   Begin VB.Image imgSign 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   0
      Left            =   3349
      Picture         =   "Traffic.frx":0F32
      Top             =   840
      Width           =   480
   End
   Begin VB.Image imgBlank 
      Height          =   495
      Left            =   120
      Top             =   4200
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Shape Shape1 
      Height          =   1335
      Left            =   120
      Top             =   480
      Width           =   6735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Drag And Drop The Signs Into The Correct Boxes"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6735
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
   End
End
Attribute VB_Name = "frmTraffic"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NumCorrect%


Private Sub Form_DragDrop(Source As Control, X As Single, Y As Single)
'unallowable drop; return sign to original location
Source.Visible = True

End Sub

Private Sub Form_DragOver(Source As Control, X As Single, Y As Single, State As Integer)
'set sign to invisible when dragging begins

If State = 0 Or State = 2 Then
    Source.Visible = False
ElseIf State = 1 Then
    Source.Visible = True
End If
End Sub

Private Sub Form_Load()
'center form on desktop
frmTraffic.Top = (Screen.Height - frmTraffic.Height) / 2
frmTraffic.Left = (Screen.Width - frmTraffic.Width) / 2
'set dragicons for signs
For Index = 0 To 4
    imgSign(Index).DragIcon = imgSign(Index).Picture
Next

End Sub

Private Sub imgContainer_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
'check for correct drop (indexes match)
If Source.Index = Index Then
    'place sign in container; increment NumCorrect%
    imgContainer(Index).Picture = Source.Picture
    Source.Visible = False
    NumCorrect% = NumCorrect% + 1
    'check for last sign
    If NumCorrect% = 5 Then
        'display message; clear signs
        MsgBox "Well Done", vbExclamation, "Traffic Signs"
        mnuClear_Click
    End If
Else
    'incorrect drop; return sign to original location
    Source.Visible = True
End If

        
End Sub

Private Sub imgContainer_DragOver(Index As Integer, Source As Control, X As Single, Y As Single, State As Integer)
If State = 0 Or 2 Then
    Source.Visible = False
ElseIf State = 1 Then
    Source.Visible = True
End If
End Sub

Private Sub imgSign_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
'unallowable drop; return sign to original location
Source.Visible = True
End Sub

Private Sub imgSign_DragOver(Index As Integer, Source As Control, X As Single, Y As Single, State As Integer)
If State = 0 Or 2 Then
    Source.Visible = False
ElseIf State = 1 Then
    Source.Visible = True
End If
End Sub

Private Sub Label1_DragDrop(Source As Control, X As Single, Y As Single)
'unallowable drop; return sign to original location
Source.Visible = True
End Sub


Private Sub Label1_DragOver(Source As Control, X As Single, Y As Single, State As Integer)
If State = 0 Or 2 Then
    Source.Visible = False
ElseIf State = 1 Then
    Source.Visible = True
End If
End Sub

Private Sub Label2_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
'unallowable drop; return sign to original location
Source.Visible = True
End Sub

Private Sub Label2_DragOver(Index As Integer, Source As Control, X As Single, Y As Single, State As Integer)
If State = 0 Or 2 Then
    Source.Visible = False
ElseIf State = 1 Then
    Source.Visible = True
End If
End Sub

Private Sub mnuClear_Click()
'clear containers and reset signs to original locations
For Index = 0 To 4
    imgContainer(Index).Picture = imgBlank.Picture
    imgSign(Index).Visible = True
Next
'reset counter
NumCorrect% = 0

End Sub

Private Sub mnuQuiz_Click()
Const Instruction$ = "Type the letter of the correct response and " & _
                     "click OK.  Click Cancel to skip this question." _
                     & vbNewLine & vbNewLine
Const Choice$ = vbNewLine & vbNewLine & "a. Stop" & vbNewLine & _
                "b. Do Not Enter" & vbNewLine & "c. Slippery Road"
Dim QuesNum%, Question$, CorrectAnswer$, Response$
'hide traffic form
frmTraffic.Hide
'loop for three questions
For QuesNum% = 1 To 3
    'assign value to variable Question$ and variable CorrectAnswer$
    Select Case QuesNum%
        Case Is = 1
            Question$ = "1. Which sign has a diamond shape?" & Choice$
            CorrectAnswer$ = "C"
        Case Is = 2
            Question$ = "2. Which sign has a octagonal shape?" & Choice$
            CorrectAnswer$ = "A"
        Case Is = 3
            Question$ = "3. Which sign has a round shape?" & Choice$
            CorrectAnswer$ = "B"
    End Select
    'display question; assign returned value to variable Response$
    Response$ = InputBox(Instruction$ & Question$, "Traffic Sign Shape Quiz")
    'begin loop for correct answer or cancel button
    Do Until UCase$(Response$) = CorrectAnswer$ Or Response$ = ""
        'display message box for wrong answer
        MsgBox "Your response was not correct. Please try again", , _
               "Traffic Sign Shape Quiz"
        'display question again
        Response$ = InputBox(Instruction$ & Question$, _
                    "Traffic Sign Shape Quiz")
    Loop
'add 1 to counter in for...next loop
Next
'display main form after 3rd question
frmTraffic.Show

               
End Sub

Private Sub mnuShow_Click()
'move all signs to correct containers
For Index = 0 To 4
    imgContainer(Index).Picture = imgSign(Index).Picture
    imgSign(Index).Visible = False
Next

End Sub
