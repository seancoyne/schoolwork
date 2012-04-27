VERSION 5.00
Begin VB.Form inchConv 
   Caption         =   "A Stitch In Time"
   ClientHeight    =   2085
   ClientLeft      =   8505
   ClientTop       =   5250
   ClientWidth     =   3405
   LinkTopic       =   "Form1"
   ScaleHeight     =   2085
   ScaleWidth      =   3405
   Begin VB.TextBox txtTotInch 
      Height          =   285
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   1680
      Width           =   735
   End
   Begin VB.TextBox txtTotFeet 
      Height          =   285
      Left            =   1335
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   1680
      Width           =   735
   End
   Begin VB.TextBox txtTotYards 
      Height          =   285
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   1680
      Width           =   735
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "Convert"
      Height          =   375
      Left            =   1200
      TabIndex        =   5
      Top             =   840
      Width           =   975
   End
   Begin VB.CommandButton cmdInput 
      Caption         =   "Input"
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Top             =   240
      Width           =   735
   End
   Begin VB.TextBox txtInputInches 
      Height          =   285
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   855
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Total Inches"
      Height          =   195
      Left            =   2160
      TabIndex        =   11
      Top             =   1440
      Width           =   885
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Total Feet"
      Height          =   195
      Left            =   1320
      TabIndex        =   10
      Top             =   1440
      Width           =   720
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Total Yards"
      Height          =   195
      Left            =   360
      TabIndex        =   9
      Top             =   1440
      Width           =   810
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Total Inches"
      Height          =   195
      Left            =   2160
      TabIndex        =   4
      Top             =   120
      Width           =   885
   End
   Begin VB.Label lblRunningSum 
      BorderStyle     =   1  'Fixed Single
      Height          =   315
      Left            =   2160
      TabIndex        =   2
      Top             =   360
      Width           =   885
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Inches"
      Height          =   195
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   480
   End
End
Attribute VB_Name = "inchConv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdConvert_Click()
txtTotYards.Text = (Val(lblRunningSum.Caption) / 12) / 3
txtTotFeet.Text = Val(lblRunningSum.Caption) / 12
txtTotInch.Text = lblRunningSum.Caption
End Sub

Private Sub cmdInput_Click()
lblRunningSum.Caption = Val(lblRunningSum.Caption) + Val(txtInputInches.Text)
End Sub

