Attribute VB_Name = "Module11"
Sub Slide_show()
'
' проигрование слайд-шоу
'
    Const Title As String = "Cлайд-шоу"
    Dim F_s As String, Temp As String, F_l As String
    Temp = InputBox("Введите как показывать смену слайдов(1 - при нажатии клавиши, 2 - для репетиций, 3 - слайд показывается в течение заложеного времени", Title)
    F_s = InputBox("Введите № первого слайда с которого начинать показ слайдов", Title)
    F_l = InputBox("Введите № последнего слайда", Title)
    If Temp And F_s And F_l <> "" Then
        With ActivePresentation.SlideShowSettings
        If Temp = "1" Then
            .AdvanceMode = ppSlideShowManualAdvence
        ElseIf Temp = "2" Then
            .AdvanceMode = ppSlideShowRehearseNewTimings
        ElseIf Temp = "3" Then
            .AdvanceMode = ppSlideShowUseSlideTimings
        Else: MsgBox "Вы ввели неправильное знач.!"
        End If
            .ShowScrollbar = msoFalse
            .StartingSlide = CSng(F_s)
            .EndingSlide = CSng(F_l)
            .LoopUntilStopped = False
            .ShowType = ppSlideShowUseSlideTimings
            .ShowType = ppShowTypeKiosk
            .Run
        End With
        Else: MsgBox "Вы отказались от ввода данных!"
        End If
End Sub
