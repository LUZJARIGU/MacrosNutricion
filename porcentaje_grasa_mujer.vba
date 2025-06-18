Function PorcentajeGrasaMujer(pliegueTricipital As Double, pliegueSuprailiaco As Double, pliegueMuslo As Double, edad As Double) As Double
    Dim suma As Double
    Dim densidad As Double

    suma = pliegueTricipital + pliegueSuprailiaco + pliegueMuslo

    ' Fórmula de Jackson & Pollock para mujeres (3 pliegues)
    densidad = 1.0994921 - (0.0009929 * suma) + (0.0000023 * (suma ^ 2)) - (0.0001392 * edad)

    ' Siri: % Grasa = (495 / Densidad) - 450
    PorcentajeGrasaMujer = (495 / densidad) - 450
End Function
