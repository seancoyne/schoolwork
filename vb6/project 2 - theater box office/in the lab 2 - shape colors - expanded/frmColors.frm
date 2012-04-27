VERSION 5.00
Begin VB.Form frmColors 
   Caption         =   "Shapes and Colors"
   ClientHeight    =   5205
   ClientLeft      =   4500
   ClientTop       =   2940
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   ScaleHeight     =   5205
   ScaleWidth      =   6615
   StartUpPosition =   2  'CenterScreen
   Begin VB.HScrollBar hsbBlue 
      Height          =   255
      Index           =   3
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   23
      Top             =   4440
      Width           =   1815
   End
   Begin VB.HScrollBar hsbBlue 
      Height          =   255
      Index           =   2
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   22
      Top             =   4440
      Width           =   1815
   End
   Begin VB.HScrollBar hsbBlue 
      Height          =   255
      Index           =   1
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   21
      Top             =   2280
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGreen 
      Height          =   255
      Index           =   3
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   20
      Top             =   4080
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGreen 
      Height          =   255
      Index           =   2
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   19
      Top             =   4080
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGreen 
      Height          =   255
      Index           =   1
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   18
      Top             =   1920
      Width           =   1815
   End
   Begin VB.HScrollBar hsbRed 
      Height          =   255
      Index           =   3
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   17
      Top             =   3720
      Width           =   1815
   End
   Begin VB.HScrollBar hsbRed 
      Height          =   255
      Index           =   2
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   16
      Top             =   3720
      Width           =   1815
   End
   Begin VB.HScrollBar hsbRed 
      Height          =   255
      Index           =   1
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   15
      Top             =   1560
      Width           =   1815
   End
   Begin VB.HScrollBar hsbBlue 
      Height          =   255
      Index           =   0
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   2
      Top             =   2280
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGreen 
      Height          =   255
      Index           =   0
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   1
      Top             =   1920
      Width           =   1815
   End
   Begin VB.HScrollBar hsbRed 
      Height          =   255
      Index           =   0
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   0
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Shape Shape 
      FillStyle       =   0  'Solid
      Height          =   855
      Index           =   3
      Left            =   4320
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Shape Shape 
      FillStyle       =   0  'Solid
      Height          =   855
      Index           =   2
      Left            =   1200
      Shape           =   2  'Oval
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Shape Shape 
      FillStyle       =   0  'Solid
      Height          =   855
      Index           =   1
      Left            =   4320
      Shape           =   1  'Square
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "Red"
      Height          =   195
      Left            =   3360
      TabIndex        =   14
      Top             =   3720
      Width           =   300
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Green"
      Height          =   195
      Left            =   3360
      TabIndex        =   13
      Top             =   4080
      Width           =   435
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "Blue"
      Height          =   195
      Left            =   3360
      TabIndex        =   12
      Top             =   4440
      Width           =   315
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "Red"
      Height          =   195
      Left            =   240
      TabIndex        =   11
      Top             =   3720
      Width           =   300
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Green"
      Height          =   195
      Left            =   240
      TabIndex        =   10
      Top             =   4080
      Width           =   435
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Blue"
      Height          =   195
      Left            =   240
      TabIndex        =   9
      Top             =   4440
      Width           =   315
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Red"
      Height          =   195
      Left            =   3360
      TabIndex        =   8
      Top             =   1560
      Width           =   300
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Green"
      Height          =   195
      Left            =   3360
      TabIndex        =   7
      Top             =   1920
      Width           =   435
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Blue"
      Height          =   195
      Left            =   3360
      TabIndex        =   6
      Top             =   2280
      Width           =   315
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Blue"
      Height          =   195
      Left            =   240
      TabIndex        =   5
      Top             =   2280
      Width           =   315
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Green"
      Height          =   195
      Left            =   240
      TabIndex        =   4
      Top             =   1920
      Width           =   435
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Red"
      Height          =   195
      Left            =   240
      TabIndex        =   3
      Top             =   1560
      Width           =   300
   End
   Begin VB.Shape Shape 
      FillStyle       =   0  'Solid
      Height          =   855
      Index           =   0
      Left            =   1200
      Shape           =   3  'Circle
      Top             =   480
      Width           =   1215
   End
End
Attribute VB_Name = "frmColors"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Sub changeColor(Index As Integer)
    Shape(Index).FillColor = RGB(hsbRed(Index).Value, hsbGreen(Index).Value, hsbBlue(Index).Value)
End Sub
Private Sub hsbBlue_Change(Index As Integer)
changeColor Index
End Sub

Private Sub hsbGreen_Change(Index As Integer)
changeColor Index
End Sub

Private Sub hsbRed_Change(Index As Integer)
changeColor Index
End Sub
