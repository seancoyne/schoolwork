VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmTheater 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Theater Box Office"
   ClientHeight    =   6075
   ClientLeft      =   4260
   ClientTop       =   1485
   ClientWidth     =   4455
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6075
   ScaleWidth      =   4455
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdFont 
      Caption         =   "Font"
      Height          =   255
      Left            =   3720
      TabIndex        =   17
      Top             =   120
      Width           =   615
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3960
      Top             =   5520
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox txtRecord 
      Height          =   975
      Left            =   480
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      Top             =   4560
      Width           =   3375
   End
   Begin VB.CommandButton cmdEnter 
      Caption         =   "Enter"
      Height          =   495
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "# of Tickets"
      Height          =   735
      Left            =   480
      TabIndex        =   5
      Top             =   2040
      Width           =   3375
      Begin VB.OptionButton Option4 
         Caption         =   "4"
         Height          =   255
         Left            =   2640
         TabIndex        =   13
         Top             =   240
         Width           =   495
      End
      Begin VB.OptionButton Option3 
         Caption         =   "3"
         Height          =   255
         Left            =   1875
         TabIndex        =   12
         Top             =   240
         Width           =   495
      End
      Begin VB.OptionButton Option2 
         Caption         =   "2"
         Height          =   255
         Left            =   1125
         TabIndex        =   11
         Top             =   240
         Width           =   495
      End
      Begin VB.OptionButton Option1 
         Caption         =   "1"
         Height          =   255
         Left            =   360
         TabIndex        =   10
         Top             =   240
         Width           =   495
      End
      Begin VB.OptionButton Option5 
         Caption         =   "Option5"
         Height          =   255
         Left            =   3000
         TabIndex        =   6
         Top             =   240
         Visible         =   0   'False
         Width           =   255
      End
   End
   Begin VB.CheckBox chkMatinee 
      Caption         =   "Matinee Discount"
      Height          =   375
      Left            =   720
      TabIndex        =   4
      Top             =   1320
      Width           =   1815
   End
   Begin VB.ComboBox cboShow 
      Height          =   315
      ItemData        =   "theater box office.frx":0000
      Left            =   480
      List            =   "theater box office.frx":0013
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   600
      Width           =   3375
   End
   Begin VB.Frame Frame2 
      Height          =   735
      Left            =   480
      TabIndex        =   14
      Top             =   1080
      Width           =   3375
   End
   Begin VB.Label lblCumSales 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty DataFormat 
         Type            =   0
         Format          =   """$""#,##0.00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      Height          =   375
      Left            =   2640
      TabIndex        =   16
      Top             =   5640
      Width           =   1215
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Cumulative Sales"
      Height          =   195
      Left            =   480
      TabIndex        =   15
      Top             =   5640
      Width           =   1215
   End
   Begin VB.Label lblAmtDue 
      BorderStyle     =   1  'Fixed Single
      BeginProperty DataFormat 
         Type            =   1
         Format          =   """$""#,##0.00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   2
      EndProperty
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
      Left            =   480
      TabIndex        =   7
      Top             =   3360
      Width           =   1815
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Transaction Record"
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   4320
      Width           =   1410
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Amount Due"
      Height          =   195
      Left            =   480
      TabIndex        =   1
      Top             =   3120
      Width           =   885
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Show Selection"
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   1110
   End
End
Attribute VB_Name = "frmTheater"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Sean Coyne
Dim num As Integer

Private Sub chkMatinee_Click()
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5

If Option1.Value = True Then num = 1

If Option2.Value = True Then num = 2

If Option3.Value = True Then num = 3

If Option4.Value = True Then num = 4

lblAmtDue.Caption = Format$(num * price, "currency")
End Sub

Private Sub cmdEnter_Click()
'check to see all fields have a value
    If cboShow.Text = "" Then
        MsgBox "Please choose a show."
    ElseIf Option5.Value = True Then
        MsgBox "Please choose the number of tickets."
    Else
        lblCumSales.Caption = Format$(Val(Format$(lblCumSales.Caption, "general number")) + Val(Format$(lblAmtDue.Caption, "general number")), "currency")
        'update transaction list and clear settings
        txtRecord.Text = num & " " & cboShow.Text & " " & lblAmtDue.Caption & vbNewLine & txtRecord.Text
        cboShow.ListIndex = -1
        chkMatinee.Value = 0
        Option5.Value = True
        lblAmtDue.Caption = ""
    End If
End Sub

Private Sub cmdFont_Click()
CommonDialog1.Flags = cdlCFBoth
CommonDialog1.ShowFont

Label1.FontName = CommonDialog1.FontName
Label1.FontSize = CommonDialog1.FontSize
Label1.FontBold = CommonDialog1.FontBold
Label1.FontItalic = CommonDialog1.FontItalic
Label1.FontStrikethru = CommonDialog1.FontStrikethru
Label1.FontUnderline = CommonDialog1.FontUnderline

Label2.FontName = CommonDialog1.FontName
Label2.FontSize = CommonDialog1.FontSize
Label2.FontBold = CommonDialog1.FontBold
Label2.FontItalic = CommonDialog1.FontItalic
Label2.FontStrikethru = CommonDialog1.FontStrikethru
Label2.FontUnderline = CommonDialog1.FontUnderline

Label3.FontName = CommonDialog1.FontName
Label3.FontSize = CommonDialog1.FontSize
Label3.FontBold = CommonDialog1.FontBold
Label3.FontItalic = CommonDialog1.FontItalic
Label3.FontStrikethru = CommonDialog1.FontStrikethru
Label3.FontUnderline = CommonDialog1.FontUnderline

Label4.FontName = CommonDialog1.FontName
Label4.FontSize = CommonDialog1.FontSize
Label4.FontBold = CommonDialog1.FontBold
Label4.FontItalic = CommonDialog1.FontItalic
Label4.FontStrikethru = CommonDialog1.FontStrikethru
Label4.FontUnderline = CommonDialog1.FontUnderline

chkMatinee.FontName = CommonDialog1.FontName
chkMatinee.FontSize = CommonDialog1.FontSize
chkMatinee.FontBold = CommonDialog1.FontBold
chkMatinee.FontItalic = CommonDialog1.FontItalic
chkMatinee.FontStrikethru = CommonDialog1.FontStrikethru
chkMatinee.FontUnderline = CommonDialog1.FontUnderline

Frame1.FontName = CommonDialog1.FontName
Frame1.FontSize = CommonDialog1.FontSize
Frame1.FontBold = CommonDialog1.FontBold
Frame1.FontItalic = CommonDialog1.FontItalic
Frame1.FontStrikethru = CommonDialog1.FontStrikethru
Frame1.FontUnderline = CommonDialog1.FontUnderline

Option1.FontName = CommonDialog1.FontName
Option1.FontSize = CommonDialog1.FontSize
Option1.FontBold = CommonDialog1.FontBold
Option1.FontItalic = CommonDialog1.FontItalic
Option1.FontStrikethru = CommonDialog1.FontStrikethru
Option1.FontUnderline = CommonDialog1.FontUnderline

Option2.FontName = CommonDialog1.FontName
Option2.FontSize = CommonDialog1.FontSize
Option2.FontBold = CommonDialog1.FontBold
Option2.FontItalic = CommonDialog1.FontItalic
Option2.FontStrikethru = CommonDialog1.FontStrikethru
Option2.FontUnderline = CommonDialog1.FontUnderline

Option3.FontName = CommonDialog1.FontName
Option3.FontSize = CommonDialog1.FontSize
Option3.FontBold = CommonDialog1.FontBold
Option3.FontItalic = CommonDialog1.FontItalic
Option3.FontStrikethru = CommonDialog1.FontStrikethru
Option3.FontUnderline = CommonDialog1.FontUnderline

Option4.FontName = CommonDialog1.FontName
Option4.FontSize = CommonDialog1.FontSize
Option4.FontBold = CommonDialog1.FontBold
Option4.FontItalic = CommonDialog1.FontItalic
Option4.FontStrikethru = CommonDialog1.FontStrikethru
Option4.FontUnderline = CommonDialog1.FontUnderline

Option5.FontName = CommonDialog1.FontName
Option5.FontSize = CommonDialog1.FontSize
Option5.FontBold = CommonDialog1.FontBold
Option5.FontItalic = CommonDialog1.FontItalic
Option5.FontStrikethru = CommonDialog1.FontStrikethru
Option5.FontUnderline = CommonDialog1.FontUnderline

lblAmtDue.FontName = CommonDialog1.FontName
lblAmtDue.FontSize = CommonDialog1.FontSize
lblAmtDue.FontBold = CommonDialog1.FontBold
lblAmtDue.FontItalic = CommonDialog1.FontItalic
lblAmtDue.FontStrikethru = CommonDialog1.FontStrikethru
lblAmtDue.FontUnderline = CommonDialog1.FontUnderline

lblCumSales.FontName = CommonDialog1.FontName
lblCumSales.FontSize = CommonDialog1.FontSize
lblCumSales.FontBold = CommonDialog1.FontBold
lblCumSales.FontItalic = CommonDialog1.FontItalic
lblCumSales.FontStrikethru = CommonDialog1.FontStrikethru
lblCumSales.FontUnderline = CommonDialog1.FontUnderline

txtRecord.FontName = CommonDialog1.FontName
txtRecord.FontSize = CommonDialog1.FontSize
txtRecord.FontBold = CommonDialog1.FontBold
txtRecord.FontItalic = CommonDialog1.FontItalic
txtRecord.FontStrikethru = CommonDialog1.FontStrikethru
txtRecord.FontUnderline = CommonDialog1.FontUnderline

cmdEnter.FontName = CommonDialog1.FontName
cmdEnter.FontSize = CommonDialog1.FontSize
cmdEnter.FontBold = CommonDialog1.FontBold
cmdEnter.FontItalic = CommonDialog1.FontItalic
cmdEnter.FontStrikethru = CommonDialog1.FontStrikethru
cmdEnter.FontUnderline = CommonDialog1.FontUnderline

cboShow.FontName = CommonDialog1.FontName
cboShow.FontSize = CommonDialog1.FontSize
cboShow.FontBold = CommonDialog1.FontBold
cboShow.FontItalic = CommonDialog1.FontItalic
cboShow.FontStrikethru = CommonDialog1.FontStrikethru
cboShow.FontUnderline = CommonDialog1.FontUnderline

cmdFont.FontName = CommonDialog1.FontName
cmdFont.FontSize = CommonDialog1.FontSize
cmdFont.FontBold = CommonDialog1.FontBold
cmdFont.FontItalic = CommonDialog1.FontItalic
cmdFont.FontStrikethru = CommonDialog1.FontStrikethru
cmdFont.FontUnderline = CommonDialog1.FontUnderline

End Sub

Private Sub Form_DblClick()
'display color dialog and set background color
CommonDialog1.ShowColor
frmTheater.BackColor = CommonDialog1.Color
cboShow.BackColor = CommonDialog1.Color
chkMatinee.BackColor = CommonDialog1.Color
Frame1.BackColor = CommonDialog1.Color
Frame2.BackColor = CommonDialog1.Color
Option1.BackColor = CommonDialog1.Color
Option2.BackColor = CommonDialog1.Color
Option3.BackColor = CommonDialog1.Color
Option4.BackColor = CommonDialog1.Color
lblAmtDue.BackColor = CommonDialog1.Color
lblCumSales.BackColor = CommonDialog1.Color
txtRecord.BackColor = CommonDialog1.Color
cmdEnter.UseMaskColor = True
cmdEnter.MaskColor = CommonDialog1.Color
cmdEnter.BackColor = CommonDialog1.Color

End Sub

Private Sub Form_Load()
Option5.Value = True
End Sub


Private Sub Option1_Click()
'calculate and display amount due
num = 1
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")

End Sub

Private Sub Option2_Click()
'calculate and display amount due
num = 2
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")
End Sub

Private Sub Option3_Click()
'calculate and display amount due
num = 3
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")
End Sub

Private Sub Option4_Click()
'calculate and display amount due
num = 4
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")
End Sub
