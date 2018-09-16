function New-Crednetial {
    param (
        [Parameter(ValueFromPipelineByPropertyName,Mandatory)]$Username,
        [Parameter(ValueFromPipelineByPropertyName)]$Password
    )
    process {
        $CredentialPassword = if ($Password) {
            ConvertTo-SecureString $Password -AsPlainText -Force
        } else {
            New-Object System.Security.SecureString
        }
        New-Object System.Management.Automation.PSCredential ($UserName, $CredentialPassword)    
    }
}