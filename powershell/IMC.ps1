Param(
    [float] $peso,
    [int]$altura

)

if($peso -eq 0){
   $peso=[float] (read-Host -Prompt "Introduce tu peso en kg ")
}
if($altura -eq 0){
    $altura=[float] (read-Host -Prompt "Introduce tu altura en cm ")
}


$altura2=$altura/100
$altura3=$altura2*$altura2
$resultado=$peso/$altura3
$IMC= [math]::Round($resultado,2)


Write-Host "Su Índice de masa corporal es:  " $IMC

if($resultado -le 18.5){
    Write-Host "Bajo Peso"
}
elseif($resultado2 -gt 18.5 -and $resultado2 -le 25){
    Write-Host "Peso Normal"
}
elseif($resultado2 -gt 25 -and $resultado2 -le 30){
    Write-Host "Sobrepeso"
}
elseif($resultado2 -gt 30){
    Write-Host "Obesidad"
}