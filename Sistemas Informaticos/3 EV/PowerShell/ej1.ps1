$nombre = Read-Host 'Nombre Fichero'
$cont = 0
while ($nombre -ne 'info.txt') {
    Write-Host 'Error'
    $nombre = Read-Host 'Nombre Fichero' 
    $cont = $cont + 1
}
    

Write-Host 'Elige opccion'
Write-Host '1- Mostrar las personas que viven en Madrid'
Write-Host '2- Mostrar el número de teléfonos que terminen por el número 5'
Write-Host '3- Mostrar el nombre y apellido de las personas que no viven en Madrid'
Write-Host '4- Mostrar la información de los usuarios ordenadas alfabéticamente por su apellido'
$opcion = Read-Host

switch ($opcion) {
    1 { Import-Csv .\info.txt -Delimiter " " -Header Nombre,Apellido,Ciudad,Tlfn | Select Nombre,Apellido,Ciudad,Tlfn | where-object {$_.Ciudad -eq "Madrid"} }
    1 { Import-Csv .\info.txt -Delimiter " " -Header Nombre,Apellido,Ciudad,Tlfn | Select Nombre,Apellido,Ciudad,Tlfn | where-object {$_.Ciudad -eq "Madrid"} }
    3 { Import-Csv .\info.txt -Delimiter " " -Header Nombre,Apellido,Ciudad,Tlfn | Select Nombre,Apellido,Ciudad,Tlfn | where-object {$_.Ciudad -eq "Madrid"} }
    4 { Import-Csv .\info.txt -Delimiter " " -Header Nombre,Apellido,Ciudad,Tlfn | Select Nombre,Apellido,Ciudad,Tlfn | where-object {$_.Ciudad -eq "Madrid"} }
    Default {}
}

Write-Host 'El usuario ha cometido' $cont 'errores'