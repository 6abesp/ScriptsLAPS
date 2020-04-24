Workflow Permisos
{

$ou = read-host "coloca la OU por bucar OU=usuarios,DC=contoso,DC=com"
$prin = read-host "coloca el usuario administradoral que se le asignará el permiso Ej: contoso\Juan"
Find-AdmPwdExtendedRights -Identity $ou | Format-List
Set-AdmPwdComputerSelfPermission -OrgUnit $ou
Set-AdmPwdReadPasswordPermission -OrgUnit $ou -AllowedPrincipals $prin
Set-AdmPwdResetPasswordPermission -OrgUnit $ou -AllowedPrincipals $prin
}