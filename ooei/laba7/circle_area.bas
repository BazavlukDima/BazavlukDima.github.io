Attribute VB_Name = "Module1"

Const Pi As Single = 3.1415
Dim CircleArea As Single
Sub Circle_Area_04()
    Const Title As String = "������� �����"
    Dim Radius As Single, Temp As String
    Temp = InputBox("������� ������ �����", Title)
    If Temp <> "" Then
        Radius = CSng(Temp)
        CircleArea = Pi * (Radius * Radius)
        MsgBox CircleArea, , Title
    Else: MsgBox "�� ���������� �� ����� ������!"
    End If
End Sub
