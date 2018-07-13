function New-Crednetial {
    param (
        [Parameter(ValueFromPipelineByPropertyName)]$Username,
        [Parameter(ValueFromPipelineByPropertyName)]$Password
    )
    process {
        $CredentialPassword = ConvertTo-SecureString $Password -AsPlainText -Force
        New-Object System.Management.Automation.PSCredential ($UserName, $CredentialPassword)    
    }
}