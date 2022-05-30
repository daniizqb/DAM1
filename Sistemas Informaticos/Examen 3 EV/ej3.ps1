$anyo = Read-Host 'El usuario escribe el año'

$anyo = $anyo / 100

$anyo =  [math]::round($anyo,0)
Write-Host $anyo
