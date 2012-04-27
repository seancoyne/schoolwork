VERSION 5.00
Begin VB.Form frmScreenCap 
   Caption         =   "View Screenshot"
   ClientHeight    =   10110
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12180
   LinkTopic       =   "Form1"
   ScaleHeight     =   10110
   ScaleWidth      =   12180
   StartUpPosition =   3  'Windows Default
   Begin VB.Image Image1 
      Height          =   9735
      Left            =   323
      Stretch         =   -1  'True
      Top             =   188
      Width           =   11535
   End
End
Attribute VB_Name = "frmScreenCap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    Image1.Width = (Me.Width - 2)
    Image1.Height = (Me.Height - 12)
    Image1.Left = 1
    Image1.Top = 1
End Sub

Private Sub Form_Resize()
    Image1.Width = Me.Width
    Image1.Height = Me.Height
End Sub

Private Sub Form_Terminate()
Set frmScreenCap.Image1.Picture = LoadPicture("", vbLPLarge, vbLPColor)
End Sub

Private Sub Form_Unload(Cancel As Integer)
Set frmScreenCap.Image1.Picture = LoadPicture("", vbLPLarge, vbLPColor)
End Sub
