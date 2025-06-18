Function PorcentajeGrasaHombre(plieguePectoral As Double, pliegueAbdominal As Double, pliegueMuslo As Double, edad As Double) As Double
    Dim suma As Double
    Dim densidad As Double

    suma = plieguePectoral + pliegueAbdominal + pliegueMuslo

    ' Fórmula de Jackson & Pollock para hombres (3 pliegues)
    densidad = 1.10938 - (0.0008267 * suma) + (0.0000016 * (suma ^ 2)) - (0.0002574 * edad)

    ' Siri: % Grasa = (495 / Densidad) - 450
    PorcentajeGrasaHombre = (495 / densidad) - 450
End Function
