Param(
    [string] $username
)
# if [ -z $username ]; then en bash
# ...
#fi
if ($username -eq "") {
    $username=Read-Host -Prompt "Introduce el nombre de usuario"
}

$user = Get-LocalUser $username
if ($user) {
Write-Host "Nombre del usuario       : "  $user.Name
Write-Host "nombre completo          : "  $user.FullName
Write-Host "SID       : "  $user.SID
Write-Host "Último inicio de sesión  : "  $user.LastLogon
} else {
    write-Host -ForegroundColor Red "El usuario $username no existe"
}