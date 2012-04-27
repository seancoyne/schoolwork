VERSION 5.00
Begin VB.Form frmCoverage 
   Caption         =   "Klassic Kar Insurance"
   ClientHeight    =   5910
   ClientLeft      =   7680
   ClientTop       =   3105
   ClientWidth     =   3690
   LinkTopic       =   "Form1"
   ScaleHeight     =   5910
   ScaleWidth      =   3690
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   578
      TabIndex        =   12
      Top             =   5160
      Width           =   1215
   End
   Begin VB.OptionButton optTruck 
      Caption         =   "Truck"
      Height          =   495
      Left            =   720
      TabIndex        =   11
      Top             =   3240
      Width           =   1215
   End
   Begin VB.OptionButton optSUV 
      Caption         =   "SUV"
      Height          =   495
      Left            =   720
      TabIndex        =   10
      Top             =   2880
      Width           =   1215
   End
   Begin VB.OptionButton optSports 
      Caption         =   "Sports Car"
      Height          =   495
      Left            =   720
      TabIndex        =   9
      Top             =   2520
      Width           =   1215
   End
   Begin VB.OptionButton Option1 
      Height          =   495
      Left            =   2760
      TabIndex        =   8
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton cmdReset 
      Caption         =   "Reset"
      Height          =   495
      Left            =   1898
      TabIndex        =   7
      Top             =   5160
      Width           =   1215
   End
   Begin VB.OptionButton optSedan 
      Caption         =   "Sedan"
      Height          =   495
      Left            =   720
      TabIndex        =   4
      Top             =   2160
      Width           =   1215
   End
   Begin VB.OptionButton optEconomy 
      Caption         =   "Economy Car"
      Height          =   495
      Left            =   720
      TabIndex        =   3
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Frame frmCarCategory 
      Caption         =   "Vehicle Category"
      Height          =   2415
      Left            =   458
      TabIndex        =   2
      Top             =   1560
      Width           =   2775
   End
   Begin VB.CheckBox chkMultiDiscount 
      Caption         =   "Multiple Car Discount ($200)"
      Height          =   495
      Left            =   458
      TabIndex        =   1
      Top             =   840
      Width           =   2535
   End
   Begin VB.ComboBox cmbCoverage 
      Height          =   315
      ItemData        =   "coverage.frx":0000
      Left            =   458
      List            =   "coverage.frx":0013
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   360
      Width           =   2775
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Coverage Option"
      Height          =   195
      Left            =   480
      TabIndex        =   13
      Top             =   120
      Width           =   1200
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Total Cost/6 mo."
      Height          =   195
      Left            =   885
      TabIndex        =   6
      Top             =   4200
      Width           =   1185
   End
   Begin VB.Label lblTotalCost 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   885
      TabIndex        =   5
      Top             =   4440
      Width           =   1935
   End
End
Attribute VB_Name = "frmCoverage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdCalculate_Click()
    Dim baseCost As Currency
'set base cost
    Select Case cmbCoverage.Text
        Case "Full Coverage"
            baseCost = 3000
        Case "No Collision"
            baseCost = 2500
        Case "No Medical"
            baseCost = 2500
        Case "No Collision or Medical"
            baseCost = 2000
        Case Else
            MsgBox "Please Choose a Coverage Option"
    End Select
'check for discount
    If chkMultiDiscount = Checked Then
        baseCost = baseCost - 200
    End If
'adjust cost for car category
    If optEconomy = True Then
        baseCost = baseCost + 500
    ElseIf optSedan = True Then
        baseCost = baseCost + 600
    ElseIf optSports = True Then
        baseCost = baseCost + 1000
    ElseIf optSUV = True Then
        baseCost = baseCost + 700
    ElseIf optTruck = True Then
        baseCost = baseCost + 500
    End If
'calculate and display
    lblTotalCost.Caption = baseCost
End Sub

Private Sub cmdReset_Click()
Option1 = True
chkMultiDiscount.Value = Unchecked
lblTotalCost.Caption = ""
cmbCoverage.ListIndex = 0
End Sub

