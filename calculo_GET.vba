Function CalcularGET(peso As Double, talla As Double, edad As Double, sexo As String, actividad As String) As Double
    Dim TMB As Double
    Dim factor As Double

    sexo = LCase(sexo)
    actividad = LCase(actividad)

    ' Calcular TMB según Harris-Benedict
    If sexo = "mujer" Then
        TMB = 655.1 + (9.563 * peso) + (1.850 * talla) - (4.676 * edad)
    ElseIf sexo = "hombre" Then
        TMB = 66.5 + (13.75 * peso) + (5.003 * talla) - (6.755 * edad)
    Else
        CalcularGET = -1
        Exit Function
    End If

    ' Factor de actividad
    Select Case actividad
        Case "sedentario"
            factor = 1.2
        Case "ligero"
            factor = 1.375
        Case "moderado"
            factor = 1.55
        Case "intenso"
            factor = 1.725
        Case "muy intenso"
            factor = 1.9
        Case Else
            CalcularGET = -1
            Exit Function
    End Select

    CalcularGET = TMB * factor
End Function
