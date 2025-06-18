Function ClasificarIMC(peso As Double, talla As Double) As String
    Dim imc As Double
    imc = peso / ((talla / 100) ^ 2)

    Select Case imc
        Case Is < 18.5
            ClasificarIMC = "Bajo peso"
        Case 18.5 To 24.9
            ClasificarIMC = "Peso normal"
        Case 25 To 29.9
            ClasificarIMC = "Sobrepeso"
        Case 30 To 34.9
            ClasificarIMC = "Obesidad I"
        Case 35 To 39.9
            ClasificarIMC = "Obesidad II"
        Case Is >= 40
            ClasificarIMC = "Obesidad III"
        Case Else
            ClasificarIMC = "Error"
    End Select
End Function
