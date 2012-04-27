VERSION 5.00
Begin VB.Form frmRPSGame 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Rock, Paper, Scissors"
   ClientHeight    =   5115
   ClientLeft      =   6750
   ClientTop       =   5025
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5115
   ScaleWidth      =   6615
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear Scores"
      Height          =   495
      Left            =   4155
      TabIndex        =   10
      Top             =   4440
      Width           =   1095
   End
   Begin VB.TextBox txtTies 
      Height          =   285
      Left            =   3405
      TabIndex        =   6
      Top             =   4560
      Width           =   615
   End
   Begin VB.TextBox txtLosses 
      Height          =   285
      Left            =   2685
      TabIndex        =   5
      Top             =   4560
      Width           =   615
   End
   Begin VB.TextBox txtWins 
      Height          =   285
      Left            =   1965
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   4560
      Width           =   615
   End
   Begin VB.CommandButton cmdShoot 
      Caption         =   "SHOOT!"
      Height          =   495
      Left            =   2760
      TabIndex        =   2
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Ties"
      Height          =   195
      Left            =   3555
      TabIndex        =   9
      Top             =   4320
      Width           =   300
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Losses"
      Height          =   195
      Left            =   2745
      TabIndex        =   8
      Top             =   4320
      Width           =   495
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Wins"
      Height          =   195
      Left            =   2085
      TabIndex        =   7
      Top             =   4320
      Width           =   360
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Score"
      Height          =   195
      Left            =   1365
      TabIndex        =   3
      Top             =   4560
      Width           =   420
   End
   Begin VB.Image imgComputer 
      Height          =   960
      Index           =   2
      Left            =   4155
      Picture         =   "rps.frx":0000
      Top             =   2880
      Width           =   960
   End
   Begin VB.Image imgComputer 
      Height          =   960
      Index           =   1
      Left            =   4155
      Picture         =   "rps.frx":3042
      Top             =   1740
      Width           =   960
   End
   Begin VB.Image imgComputer 
      Height          =   960
      Index           =   0
      Left            =   4155
      Picture         =   "rps.frx":6084
      Top             =   615
      Width           =   960
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Computer"
      Height          =   195
      Left            =   4305
      TabIndex        =   1
      Top             =   240
      Width           =   675
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Player"
      Height          =   195
      Left            =   1755
      TabIndex        =   0
      Top             =   240
      Width           =   435
   End
   Begin VB.Image imgPlayer 
      Height          =   960
      Index           =   2
      Left            =   1500
      Picture         =   "rps.frx":90C6
      Top             =   2880
      Width           =   960
   End
   Begin VB.Image imgPlayer 
      Height          =   960
      Index           =   1
      Left            =   1500
      Picture         =   "rps.frx":C108
      Top             =   1740
      Width           =   960
   End
   Begin VB.Image imgPlayer 
      Height          =   960
      Index           =   0
      Left            =   1500
      Picture         =   "rps.frx":F14A
      Top             =   615
      Width           =   960
   End
   Begin VB.Menu mnuCommands 
      Caption         =   "&Commands"
      Begin VB.Menu mnuShoot 
         Caption         =   "&Shoot"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuClear 
         Caption         =   "&Clear"
         Shortcut        =   ^C
      End
   End
   Begin VB.Menu mnuChoice 
      Caption         =   "&Choice"
      Begin VB.Menu mnuRock 
         Caption         =   "&Rock"
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuPaper 
         Caption         =   "&Paper"
         Shortcut        =   ^P
      End
      Begin VB.Menu mnuScissors 
         Caption         =   "&Scissors"
         Shortcut        =   ^S
      End
   End
End
Attribute VB_Name = "frmRPSGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PlayerChoice As Integer
Dim CompuChoice As Integer
Dim ties As Integer
Dim wins As Integer
Dim losses As Integer


Public Sub switchPlayerChoice(Index As Integer)
    For x = 0 To 2
        If x = Index Then
            imgPlayer(x).BorderStyle = 1
        Else
            imgPlayer(x).BorderStyle = 0
        End If
    Next
End Sub

Private Sub cmdClear_Click()
    txtWins.Text = ""
    txtLosses.Text = ""
    txtTies.Text = ""
End Sub

Private Sub cmdShoot_Click()
    'reset computer selection
    For x = 0 To 2
        imgComputer(x).BorderStyle = 0
    Next
    'get computer selection
    CompuChoice = Int((2 - 0 + 1) * Rnd + 0)
    imgComputer(CompuChoice).BorderStyle = 1
    'compare with player selection
    Select Case CompuChoice
        Case Is = 0     'rock
            If PlayerChoice = 0 Then        'rock
                MsgBox "Tie!! Rock to Rock", vbExclamation, "Rock, Paper, Scissors"
                txtTies.Text = Val(txtTies) + 1
            ElseIf PlayerChoice = 1 Then    'paper
                MsgBox "You Win!! Paper Covers Rock", vbExclamation, "Rock, Paper, Scissors"
                txtWins.Text = Val(txtWins) + 1
            ElseIf PlayerChoice = 2 Then    'scissors
                MsgBox "You Lose!! Rock Breaks Scissors", vbExclamation, "Rock, Paper, Scissors"
                txtLosses.Text = Val(txtLosses) + 1
            End If
        Case Is = 1     'paper
            If PlayerChoice = 1 Then        'paper
                MsgBox "Tie!! Paper to Paper", vbExclamation, "Rock, Paper, Scissors"
                txtTies.Text = Val(txtTies) + 1
            ElseIf PlayerChoice = 2 Then    'scissors
                MsgBox "You Win!! Scissors Cut Papers", vbExclamation, "Rock, Paper, Scissors"
                txtWins.Text = Val(txtWins) + 1
            ElseIf PlayerChoice = 0 Then    'rock
                MsgBox "You Lose!! Paper Covers Rock", vbExclamation, "Rock, Paper, Scissors"
                txtLosses.Text = Val(txtLosses) + 1
            End If
        Case Is = 2     'scissors
            If PlayerChoice = 2 Then        'scissors
                MsgBox "Tie!! Scissors to Scissors", vbExclamation, "Rock, Paper, Scissors"
                txtTies.Text = Val(txtTies) + 1
            ElseIf PlayerChoice = 0 Then    'rock
                MsgBox "You Win!! Rock Breaks Scissors", vbExclamation, "Rock, Paper, Scissors"
                txtWins.Text = Val(txtWins) + 1
            ElseIf PlayerChoice = 1 Then    'paper
                MsgBox "You Lose!! Scissors Cut Paper", vbExclamation, "Rock, Paper, Scissors"
                txtLosses.Text = Val(txtLosses) + 1
            End If
    End Select
        
End Sub


Private Sub imgPlayer_Click(Index As Integer)
    switchPlayerChoice Index
    PlayerChoice = Index
End Sub

Private Sub mnuClear_Click()
    cmdClear_Click
End Sub

Private Sub mnuPaper_Click()
    switchPlayerChoice 1
    PlayerChoice = 1
End Sub

Private Sub mnuRock_Click()
    switchPlayerChoice 0
    PlayerChoice = 0
End Sub

Private Sub mnuScissors_Click()
    switchPlayerChoice 2
    PlayerChoice = 2
End Sub

Private Sub mnuShoot_Click()
    cmdShoot_Click
End Sub
