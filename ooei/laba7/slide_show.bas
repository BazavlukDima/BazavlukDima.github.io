Attribute VB_Name = "Module11"
Sub Slide_show()
'
' ������������ �����-���
'
    Const Title As String = "C����-���"
    Dim F_s As String, Temp As String, F_l As String
    Temp = InputBox("������� ��� ���������� ����� �������(1 - ��� ������� �������, 2 - ��� ���������, 3 - ����� ������������ � ������� ���������� �������", Title)
    F_s = InputBox("������� � ������� ������ � �������� �������� ����� �������", Title)
    F_l = InputBox("������� � ���������� ������", Title)
    If Temp And F_s And F_l <> "" Then
        With ActivePresentation.SlideShowSettings
        If Temp = "1" Then
            .AdvanceMode = ppSlideShowManualAdvence
        ElseIf Temp = "2" Then
            .AdvanceMode = ppSlideShowRehearseNewTimings
        ElseIf Temp = "3" Then
            .AdvanceMode = ppSlideShowUseSlideTimings
        Else: MsgBox "�� ����� ������������ ����.!"
        End If
            .ShowScrollbar = msoFalse
            .StartingSlide = CSng(F_s)
            .EndingSlide = CSng(F_l)
            .LoopUntilStopped = False
            .ShowType = ppSlideShowUseSlideTimings
            .ShowType = ppShowTypeKiosk
            .Run
        End With
        Else: MsgBox "�� ���������� �� ����� ������!"
        End If
End Sub
