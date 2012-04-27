VERSION 5.00
Object = "{7C73C5C4-F4F4-4CA3-B43A-F20D1B624E79}#1.0#0"; "StWatch.ocx"
Begin VB.Form frmMultQuiz 
   Caption         =   "Multiplication Quiz"
   ClientHeight    =   4530
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6660
   LinkTopic       =   "Form1"
   ScaleHeight     =   4530
   ScaleWidth      =   6660
   StartUpPosition =   3  'Windows Default
   Begin StopWatch.StWatch StWatch1 
      Height          =   1095
      Left            =   5520
      TabIndex        =   28
      Top             =   2400
      Width           =   975
      _ExtentX        =   1720
      _ExtentY        =   1931
      Buttons         =   0   'False
   End
   Begin VB.CommandButton cmdStop 
      Height          =   735
      Left            =   5520
      Picture         =   "MultQuiz.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   27
      ToolTipText     =   "Click When Finished"
      Top             =   1320
      Width           =   975
   End
   Begin VB.CommandButton cmdStart 
      Height          =   735
      Left            =   5520
      Picture         =   "MultQuiz.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   26
      ToolTipText     =   "Click To Start"
      Top             =   360
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Height          =   3855
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   4935
      Begin VB.TextBox txtProduct 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Index           =   4
         Left            =   3840
         TabIndex        =   25
         Text            =   "25"
         Top             =   3120
         Width           =   495
      End
      Begin VB.TextBox txtProduct 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Index           =   3
         Left            =   3840
         TabIndex        =   20
         Text            =   "25"
         Top             =   2430
         Width           =   495
      End
      Begin VB.TextBox txtProduct 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Index           =   2
         Left            =   3840
         TabIndex        =   15
         Text            =   "25"
         Top             =   1740
         Width           =   495
      End
      Begin VB.TextBox txtProduct 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Index           =   1
         Left            =   3840
         TabIndex        =   10
         Text            =   "25"
         Top             =   1050
         Width           =   495
      End
      Begin VB.TextBox txtProduct 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Index           =   0
         Left            =   3840
         TabIndex        =   5
         Text            =   "25"
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   4
         Left            =   3000
         TabIndex        =   24
         Top             =   3120
         Width           =   165
      End
      Begin VB.Label lblMult2 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   4
         Left            =   2160
         TabIndex        =   23
         Top             =   3120
         Width           =   165
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   4
         Left            =   1155
         TabIndex        =   22
         Top             =   3120
         Width           =   120
      End
      Begin VB.Label lblMult1 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   4
         Left            =   240
         TabIndex        =   21
         Top             =   3120
         Width           =   165
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   3
         Left            =   3000
         TabIndex        =   19
         Top             =   2430
         Width           =   165
      End
      Begin VB.Label lblMult2 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   3
         Left            =   2160
         TabIndex        =   18
         Top             =   2430
         Width           =   165
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   3
         Left            =   1155
         TabIndex        =   17
         Top             =   2430
         Width           =   120
      End
      Begin VB.Label lblMult1 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   3
         Left            =   240
         TabIndex        =   16
         Top             =   2430
         Width           =   165
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   2
         Left            =   3000
         TabIndex        =   14
         Top             =   1740
         Width           =   165
      End
      Begin VB.Label lblMult2 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   2
         Left            =   2160
         TabIndex        =   13
         Top             =   1740
         Width           =   165
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   2
         Left            =   1155
         TabIndex        =   12
         Top             =   1740
         Width           =   120
      End
      Begin VB.Label lblMult1 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   2
         Left            =   240
         TabIndex        =   11
         Top             =   1740
         Width           =   165
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   1
         Left            =   3000
         TabIndex        =   9
         Top             =   1050
         Width           =   165
      End
      Begin VB.Label lblMult2 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   1
         Left            =   2160
         TabIndex        =   8
         Top             =   1050
         Width           =   165
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   1
         Left            =   1155
         TabIndex        =   7
         Top             =   1050
         Width           =   120
      End
      Begin VB.Label lblMult1 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   1
         Left            =   240
         TabIndex        =   6
         Top             =   1050
         Width           =   165
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   0
         Left            =   3000
         TabIndex        =   4
         Top             =   360
         Width           =   165
      End
      Begin VB.Label lblMult2 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   0
         Left            =   2160
         TabIndex        =   3
         Top             =   360
         Width           =   165
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   0
         Left            =   1155
         TabIndex        =   2
         Top             =   360
         Width           =   120
      End
      Begin VB.Label lblMult1 
         AutoSize        =   -1  'True
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   0
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   165
      End
   End
End
Attribute VB_Name = "frmMultQuiz"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdStart_Click()
Const upperbound = 9
Const lowerbound = 0
Randomize
For Index = 0 To 4
    lblMult1(Index).Caption = Int((upperbound - lowerbound + 1) * Rnd + lowerbound)
    lblMult2(Index).Caption = Int((upperbound - lowerbound + 1) * Rnd + lowerbound)
    txtProduct(Index).Text = ""
    txtProduct(Index).BackColor = vbWhite
Next
txtProduct(0).SetFocus
StWatch1.Action = 3
StWatch1.Action = 1

End Sub

Private Sub cmdStop_Click()
StWatch1.Action = 2
For Index = 0 To 4
    If lblMult1(Index).Caption * lblMult2(Index).Caption = Val(txtProduct(Index).Text) Then
        txtProduct(Index).BackColor = vbGreen
    Else
        txtProduct(Index).BackColor = vbRed
    End If
Next

End Sub

Private Sub Form_Resize()
If frmMultQuiz.WindowState = 1 Then
    'do nothing
ElseIf frmMultQuiz.Width < 6780 Then
    frmMultQuiz.Width = 6780
Else
    Frame1.Left = (frmMultQuiz.ScaleWidth - Frame1.Width - 345 - 975) / 2
    cmdStart.Left = Frame1.Left + Frame1.Width + 345
    cmdStop.Left = Frame1.Left + Frame1.Width + 345
    StWatch1.Left = Frame1.Left + Frame1.Width + 345
End If

End Sub
