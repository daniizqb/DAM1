$fichero=Get-Content fichero.txt

foreach ($nombre in $fichero){
    if (Test-Path -Path "C:\Users\AlumnoM\Documents\DAM1\Sistemas Informaticos\3 EV\PowerShell\$nombre" -PathType Leaf){
        Write-Host "El nombre"$nombre "es un archivo"
    }elseif (Test-Path -Path "C:\Users\AlumnoM\Documents\DAM1\Sistemas Informaticos\3 EV\PowerShell\$nombre" -PathType Container){
        Write-Host "El nombre" $nombre "es un directorio"
    }else{Write-Host "El nombre" $nombre "no existe"}
}