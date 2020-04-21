function Write-Log() {
    switch ($args) {
        { $_.Count -gt 0 -and $_.Count -eq 1 } { 
            $message = $args[0];
            Write-LogOutput $message;
        }
        Default { 
            Write-LogOutput "No Message included - Please check your use and try again"
        }
    }
}

function Write-LogOutput {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $Message
    )
    Write-Debug $Message;
    Write-Host $Message;
}