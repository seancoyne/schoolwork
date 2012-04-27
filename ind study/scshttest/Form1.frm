VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   3360
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   120
      TabIndex        =   2
      Top             =   2040
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   960
      TabIndex        =   1
      Text            =   "Text2"
      Top             =   840
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   240
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   255
      Left            =   1800
      TabIndex        =   4
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1920
      TabIndex        =   3
      Top             =   1680
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Then
MsgBox "Enter a ip adres!", , "Error ip"
ElseIf Text2.Text = "" Then
MsgBox "Enter a port!", , "Error Port"
Else

Winsock1.Close
Winsock1.Connect Text1.Text, Text2.Text
End If
End Sub

Private Sub Command2_Click()
Call keybd_event(vbKeySnapshot, 1, 0, 0)
End Sub

Private Sub Winsock1_Connect()
Label2.Caption = "Status: Connecting..."
Winsock1.SendData "Screenshot"
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim X As String
Winsock1.GetData X, vbString
Label2.Caption = "Status: Connected!"
Frame1.Enabled = True
End Sub

