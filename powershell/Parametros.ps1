Param(
    [string] $Primero,
    [string] $Segundo = "valor por defecto",
    [switch] $Tercero,
    [bool] $Cuarto,
    [int] $Quinto
)

Write-Host "primero=$Primero"
Write-Host "segundo=$Segundo"
Write-Host "tercero=$Tercero"
Write-Host "cuarto=$Cuarto"
Write-Host "quinto=$Quinto"