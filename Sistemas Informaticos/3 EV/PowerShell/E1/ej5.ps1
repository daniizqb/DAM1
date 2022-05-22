$n1 = Read-Host 'Num1'
$n2 = Read-Host 'Num2'

if ($n1 -gt $n2) {
    Write-Host $n1 ' es mayor que ' $n2
} else {
    Write-Host $n2 ' es mayor que ' $n1
}