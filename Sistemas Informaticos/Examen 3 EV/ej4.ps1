$nombre = Read-Host 'Nombre del usuario'
$objetivo = Read-Host 'Objetivo del usuario'

$peso = Import-Csv '.\Examen 3 EV\usuarios.txt' -Delimiter " " -Header Nombre,Peso,Fecha,Actividad | Select-Object Nombre,Peso,Actividad | Where-Object {$_.Nombre -eq "$nombre"} | ForEach-Object {return $_.Peso}

$pesok = $peso / 0.45359237
$actividad = Import-Csv '.\Examen 3 EV\usuarios.txt' -Delimiter " " -Header Nombre,Peso,Fecha,Actividad | Select-Object Nombre,Peso,Actividad | Where-Object {$_.Nombre -eq "$nombre"} | ForEach-Object {return $_.Actividad}

if ($objetivo -eq "Rebajar") {
    if ($actividad -eq "Sedentario") {
        $min = 10
        $max = 12
    } elseif ($actividad -eq "Activo") {
        $min = 12
        $max = 14
    } elseif ($actividad = "Superactivo") {
        $min = 14
        $max = 16
    }
} elseif ($objetivo -eq "Mantener") {
    if ($actividad -eq "Sedentario") {
        $min = 12
        $max = 14
    } elseif ($actividad -eq "Activo") {
        $min = 14
        $max = 16
    } elseif ($actividad -eq "Superactivo") {
        $min = 16
        $max = 18
    }
} elseif ($objetivo -eq "Aumentar") {
    if ($actividad -eq "Sedentario") {
        $min = 16
        $max = 18
    } elseif ($actividad -eq "Activo") {
        $min = 18
        $max = 20
    } elseif ($actividad -eq "Superactivo") {
        $min = 20
        $max = 22
    }
}

Write-Host 'Usuario:' $nombre
Write-Host 'Peso(kg):' $peso
$pesok = [math]::round($pesok,0)
Write-Host 'Peso(libras):' $pesok
$a1 = $pesok * $min
$a1 = [math]::round($a1,0)
$a2 = $pesok * $max
$a2 = [math]::round($a2,0)
Write-Host 'Rango Kcal:' $a1 '(min) / ' $a2 '(max)'