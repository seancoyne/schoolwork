VERSION 5.00
Begin VB.Form moneyconversion 
   Caption         =   "Currency Conversion"
   ClientHeight    =   2790
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3150
   LinkTopic       =   "Form1"
   ScaleHeight     =   2790
   ScaleWidth      =   3150
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtSpanish 
      Height          =   285
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox txtGerman 
      Height          =   285
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   1920
      Width           =   1215
   End
   Begin VB.TextBox txtItalian 
      Height          =   285
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox txtFrench 
      Height          =   285
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "Convert"
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   600
      Width           =   975
   End
   Begin VB.TextBox txtUS 
      Height          =   285
      Left            =   1560
      TabIndex        =   0
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Spanish Pesetas"
      Height          =   195
      Left            =   360
      TabIndex        =   10
      Top             =   2280
      Width           =   1185
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "German Mark"
      Height          =   195
      Left            =   360
      TabIndex        =   9
      Top             =   1920
      Width           =   960
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Italian Lira"
      Height          =   195
      Left            =   360
      TabIndex        =   8
      Top             =   1560
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "French Franc"
      Height          =   195
      Left            =   360
      TabIndex        =   7
      Top             =   1200
      Width           =   945
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Amount in US $"
      Height          =   195
      Left            =   360
      TabIndex        =   1
      Top             =   240
      Width           =   1110
   End
End
Attribute VB_Name = "moneyconversion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdConvert_Click()
txtSpanish.Text = Val(txtUS.Text) * 192.39213
txtFrench.Text = Val(txtUS.Text) * 7.58483
txtItalian.Text = Val(txtUS.Text) * 2238.909
txtGerman.Text = Val(txtUS.Text) * 2.26153
End Sub

