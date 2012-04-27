VERSION 5.00
Begin VB.Form frmTicTacToe 
   Caption         =   "Tic Tac Toe"
   ClientHeight    =   5610
   ClientLeft      =   7590
   ClientTop       =   3585
   ClientWidth     =   5715
   LinkTopic       =   "Form1"
   ScaleHeight     =   5610
   ScaleWidth      =   5715
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdPlay 
      Caption         =   "Play"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1637
      TabIndex        =   12
      Top             =   5040
      Width           =   1215
   End
   Begin VB.CommandButton cmdReset 
      Caption         =   "Reset"
      Enabled         =   0   'False
      Height          =   495
      Left            =   2957
      TabIndex        =   11
      Top             =   5040
      Width           =   1215
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   8
      Left            =   3677
      TabIndex        =   21
      Top             =   3840
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   7
      Left            =   2357
      TabIndex        =   20
      Top             =   3840
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   6
      Left            =   1037
      TabIndex        =   19
      Top             =   3840
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   5
      Left            =   3677
      TabIndex        =   18
      Top             =   2520
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   4
      Left            =   2357
      TabIndex        =   17
      Top             =   2520
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   3
      Left            =   1037
      TabIndex        =   16
      Top             =   2520
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   2
      Left            =   3677
      TabIndex        =   15
      Top             =   1200
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   1
      Left            =   2357
      TabIndex        =   14
      Top             =   1200
      Width           =   1000
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Index           =   0
      Left            =   1037
      TabIndex        =   13
      Top             =   1200
      Width           =   1000
   End
   Begin VB.Label lblturn 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   1
      Left            =   3317
      TabIndex        =   10
      Top             =   480
      Visible         =   0   'False
      Width           =   405
   End
   Begin VB.Label lblturn 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   0
      Left            =   1997
      TabIndex        =   9
      Top             =   480
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "0"
      Height          =   195
      Left            =   1517
      TabIndex        =   8
      Top             =   960
      Width           =   90
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "8"
      Height          =   195
      Left            =   4157
      TabIndex        =   7
      Top             =   3600
      Width           =   90
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "7"
      Height          =   195
      Left            =   2837
      TabIndex        =   6
      Top             =   3600
      Width           =   90
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "6"
      Height          =   195
      Left            =   1517
      TabIndex        =   5
      Top             =   3600
      Width           =   90
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "5"
      Height          =   195
      Left            =   4157
      TabIndex        =   4
      Top             =   2280
      Width           =   90
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "4"
      Height          =   195
      Left            =   2837
      TabIndex        =   3
      Top             =   2280
      Width           =   90
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "3"
      Height          =   195
      Left            =   1517
      TabIndex        =   2
      Top             =   2280
      Width           =   90
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "2"
      Height          =   195
      Left            =   4157
      TabIndex        =   1
      Top             =   960
      Width           =   90
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "1"
      Height          =   195
      Left            =   2837
      TabIndex        =   0
      Top             =   960
      Width           =   90
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Begin VB.Menu mnuPlayers 
         Caption         =   "&Players"
         Begin VB.Menu mnuOnePlayer 
            Caption         =   "&One Player"
         End
         Begin VB.Menu mnuTwoPlayers 
            Caption         =   "&Two Players"
         End
      End
   End
End
Attribute VB_Name = "frmTicTacToe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Sean Coyne
'Franklin Pierce College
'Tic Tac Toe
'Version 0.1
'Last Updated 02-27-02
Dim Xturn As Boolean        'if its x's turn then true else false
Dim numplayers As Integer   'number of players
Const upperbound = 1
Const lowerbound = 0
Private Sub cmdPlay_Click()
    If numplayers = 1 Then
        oneplayer
    ElseIf numplayers = 2 Then
        twoplayers
    Else
        MsgBox "ERROR", vbCritical, "Tic Tac Toe"
        End
    End If
End Sub
Private Sub Form_Unload(Cancel As Integer)
    End
End Sub
Public Sub oneplayer()
    getFirstTurn
End Sub
Public Sub twoplayers()
    getFirstTurn
    If Xturn = True Then
        Xchoice = getPlayerMove
        lblSpace(choice).Caption = "x"
    Else
        Ochoice = getPlayerMove
        lblSpace(choice).Caption = "o"
    End If
End Sub
Public Sub getFirstTurn()
    'get first turn
    Randomize
    t = Int((upperbound - lowerbound + 1) * Rnd + lowerbound)
    If t = 1 Then
        Xturn = True
        lblturn(0).Visible = True
        lblturn(1).Visible = False
    Else
        Xturn = False
        lblturn(0).Visible = False
        lblturn(1).Visible = True
    End If
End Sub
Public Function getPlayerMove() As Integer
    Do Until (getPlayerMove >= 0 And getPlayerMove < 8)
        choice = InputBox("What space would you like?(0-8)", "Tic Tac Toe")
    Loop
    getPlayerMove = choice
End Function
Private Sub mnuOnePlayer_Click()
    mnuOnePlayer.Checked = True
    mnuTwoPlayers.Checked = False
    cmdPlay.Enabled = True
    cmdReset_Click
    numplayers = 1
End Sub
Private Sub mnuTwoPlayers_Click()
    mnuOnePlayer.Checked = False
    mnuTwoPlayers.Checked = True
    cmdPlay.Enabled = True
    cmdReset_Click
    numplayers = 2
End Sub
Private Sub cmdReset_Click()
    For x = 0 To 8
        lblSpace(x).Caption = ""
    Next
    lblturn(0).Visible = False
    lblturn(1).Visible = False
End Sub
