<#
.SYNOPSIS
    The number of allowed bad logon attempts must be configured to three or less” — configure the Windows account lockout threshold.


.NOTES
    Author          : Danny Bruna
    LinkedIn        : https://www.linkedin.com/in/dr-danny-bruna
    GitHub          : https://github.com/DBruna84
    Date Created    : May 10, 2026
    Last Modified   : May 10, 2026
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AC-000010
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-AC-000010/

.TESTED ON
    Date(s) Tested  : May 10, 2026
    Tested By       : Danny Bruna
    Systems Tested  : Windows 11 Professional 
    PowerShell Ver. : Major-5 Minor-1 Build-26100  Revision-8115

PowerShell Remediation

Run as Administrator:

net accounts /lockoutthreshold:3
Recommended Companion Settings

STIG baselines typically also configure:

# Lockout duration (minutes)
net accounts /lockoutduration:15

# Reset failed logon counter after (minutes)
net accounts /lockoutwindow:15
Verify Configuration
net accounts
