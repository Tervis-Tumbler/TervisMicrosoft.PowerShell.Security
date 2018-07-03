function New-Crednetial {
    param (
        $Username,
        $Password
    )
    $CredentialPassword = ConvertTo-SecureString $Password -AsPlainText -Force
    New-Object System.Management.Automation.PSCredential ($UserName, $CredentialPassword)
}