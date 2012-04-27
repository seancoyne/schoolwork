VERSION 5.00
Begin VB.UserControl StWatch 
   ClientHeight    =   1395
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3615
   ScaleHeight     =   1395
   ScaleWidth      =   3615
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   120
      Top             =   1560
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Reset"
      Height          =   495
      Left            =   2400
      TabIndex        =   3
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   495
      Left            =   1200
      TabIndex        =   2
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "StWatch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Dim TotalSeconds As Integer


Private Sub Command1_Click()
Timer1.Enabled = True

End Sub

Private Sub Command2_Click()
Timer1.Enabled = False

End Sub

Private Sub Command3_Click()
TotalSeconds = 0
Label1.Caption = "00:00"

End Sub

Private Sub Timer1_Timer()
TotalSeconds = TotalSeconds + 1
Minutes = Format(TotalSeconds \ 60, "00")
Seconds = Format(TotalSeconds Mod 60, "00")
Label1.Caption = Minutes & ":" & Seconds

End Sub

Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
Command1.Visible = PropBag.ReadProperty("Buttons", True)
Command2.Visible = PropBag.ReadProperty("Buttons", True)
Command3.Visible = PropBag.ReadProperty("Buttons", True)
End Sub

Private Sub UserControl_Resize()
    With Label1
        .Top = 0
        .Left = 0
        .Height = UserControl.Height / 2
        .Width = UserControl.Width
    End With
    With Command1
        .Top = UserControl.Height / 2
        .Left = 0
        .Height = UserControl.Height / 2
        .Width = UserControl.Width / 3
    End With
    With Command2
        .Top = UserControl.Height / 2
        .Left = UserControl.Width / 3
        .Height = UserControl.Height / 2
        .Width = UserControl.Width / 3
    End With
    With Command3
        .Top = UserControl.Height / 2
        .Left = (2 / 3) * UserControl.Width
        .Height = UserControl.Height / 2
        .Width = UserControl.Width / 3
    End With
End Sub

Public Property Get Buttons() As Boolean
Buttons = Command1.Visible
End Property

Public Property Let Buttons(ByVal vNewValue As Boolean)
Command1.Visible = vNewValue
Command2.Visible = vNewValue
Command3.Visible = vNewValue
PropertyChanged "Buttons"

End Property

Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
Call PropBag.WriteProperty("Buttons", Command1.Visible, True)

End Sub

Public Property Get Action() As Variant
Attribute Action.VB_MemberFlags = "40"

End Property

Public Property Let Action(ByVal vNewValue As Variant)
Select Case vNewValue
    Case Is = 1
        Command1.Value = True
    Case Is = 2
        Command2.Value = True
    Case Is = 3
        Command3.Value = True
End Select
PropertyChanged "Action"

End Property
