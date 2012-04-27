VERSION 5.00
Begin VB.Form frmColors 
   Caption         =   "Shapes and Colors"
   ClientHeight    =   5205
   ClientLeft      =   2655
   ClientTop       =   2385
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   ScaleHeight     =   5205
   ScaleWidth      =   6615
   Begin VB.HScrollBar hsbRRect 
      Height          =   255
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   20
      Top             =   3720
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGRect 
      Height          =   255
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   19
      Top             =   4080
      Width           =   1815
   End
   Begin VB.HScrollBar hsbBRect 
      Height          =   255
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   18
      Top             =   4440
      Width           =   1815
   End
   Begin VB.HScrollBar hsbROval 
      Height          =   255
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   14
      Top             =   3720
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGOval 
      Height          =   255
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   13
      Top             =   4080
      Width           =   1815
   End
   Begin VB.HScrollBar hsbBOval 
      Height          =   255
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   12
      Top             =   4440
      Width           =   1815
   End
   Begin VB.HScrollBar hsbRSquare 
      Height          =   255
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   8
      Top             =   1560
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGSquare 
      Height          =   255
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   7
      Top             =   1920
      Width           =   1815
   End
   Begin VB.HScrollBar hsbBSquare 
      Height          =   255
      LargeChange     =   10
      Left            =   3960
      Max             =   255
      TabIndex        =   6
      Top             =   2280
      Width           =   1815
   End
   Begin VB.HScrollBar hsbBCircle 
      Height          =   255
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   2
      Top             =   2280
      Width           =   1815
   End
   Begin VB.HScrollBar hsbGCircle 
      Height          =   255
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   1
      Top             =   1920
      Width           =   1815
   End
   Begin VB.HScrollBar hsbRCircle 
      Height          =   255
      LargeChange     =   10
      Left            =   840
      Max             =   255
      TabIndex        =   0
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "Red"
      Height          =   195
      Left            =   3360
      TabIndex        =   23
      Top             =   3720
      Width           =   300
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Green"
      Height          =   195
      Left            =   3360
      TabIndex        =   22
      Top             =   4080
      Width           =   435
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "Blue"
      Height          =   195
      Left            =   3360
      TabIndex        =   21
      Top             =   4440
      Width           =   315
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "Red"
      Height          =   195
      Left            =   240
      TabIndex        =   17
      Top             =   3720
      Width           =   300
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Green"
      Height          =   195
      Left            =   240
      TabIndex        =   16
      Top             =   4080
      Width           =   435
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Blue"
      Height          =   195
      Left            =   240
      TabIndex        =   15
      Top             =   4440
      Width           =   315
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Red"
      Height          =   195
      Left            =   3360
      TabIndex        =   11
      Top             =   1560
      Width           =   300
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Green"
      Height          =   195
      Left            =   3360
      TabIndex        =   10
      Top             =   1920
      Width           =   435
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Blue"
      Height          =   195
      Left            =   3360
      TabIndex        =   9
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
   Begin VB.Shape shpRectangle 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   4320
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Shape shpOval 
      FillColor       =   &H0000C0C0&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   1200
      Shape           =   2  'Oval
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Shape shpSquare 
      FillColor       =   &H00C00000&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   4320
      Shape           =   1  'Square
      Top             =   480
      Width           =   1215
   End
   Begin VB.Shape shpCircle 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   855
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

Private Sub Form_Load()
shpCircle.FillColor = RGB(hsbRCircle.Value, hsbGCircle.Value, hsbBCircle.Value)
shpSquare.FillColor = RGB(hsbRSquare.Value, hsbGSquare.Value, hsbBSquare.Value)
shpOval.FillColor = RGB(hsbROval.Value, hsbGOval.Value, hsbBOval.Value)
shpRectangle.FillColor = RGB(hsbRRect.Value, hsbGRect.Value, hsbBRect.Value)
End Sub

Private Sub hsbRCircle_Change()
shpCircle.FillColor = RGB(hsbRCircle.Value, hsbGCircle.Value, hsbBCircle.Value)
End Sub
Private Sub hsbGCircle_Change()
shpCircle.FillColor = RGB(hsbRCircle.Value, hsbGCircle.Value, hsbBCircle.Value)
End Sub
Private Sub hsbBCircle_Change()
shpCircle.FillColor = RGB(hsbRCircle.Value, hsbGCircle.Value, hsbBCircle.Value)
End Sub

Private Sub hsbRRect_Change()
shpRectangle.FillColor = RGB(hsbRRect.Value, hsbGRect.Value, hsbBRect.Value)
End Sub
Private Sub hsbGRect_Change()
shpRectangle.FillColor = RGB(hsbRRect.Value, hsbGRect.Value, hsbBRect.Value)
End Sub
Private Sub hsbBRect_Change()
shpRectangle.FillColor = RGB(hsbRRect.Value, hsbGRect.Value, hsbBRect.Value)
End Sub

Private Sub hsbRSquare_Change()
shpSquare.FillColor = RGB(hsbRSquare.Value, hsbGSquare.Value, hsbBSquare.Value)
End Sub
Private Sub hsbGSquare_Change()
shpSquare.FillColor = RGB(hsbRSquare.Value, hsbGSquare.Value, hsbBSquare.Value)
End Sub
Private Sub hsbBSquare_Change()
shpSquare.FillColor = RGB(hsbRSquare.Value, hsbGSquare.Value, hsbBSquare.Value)
End Sub

Private Sub hsbROval_Change()
shpOval.FillColor = RGB(hsbROval.Value, hsbGOval.Value, hsbBOval.Value)
End Sub
Private Sub hsbGOval_Change()
shpOval.FillColor = RGB(hsbROval.Value, hsbGOval.Value, hsbBOval.Value)
End Sub
Private Sub hsbBOval_Change()
shpOval.FillColor = RGB(hsbROval.Value, hsbGOval.Value, hsbBOval.Value)
End Sub
