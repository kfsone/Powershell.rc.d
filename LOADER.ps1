[CmdletBinding(SupportsShouldProcess = $true)]
Param([String] $ScriptPath=$PSScriptRoot)

Get-ChildItem $PSScriptRoot -File -Filter *.rc.ps1 | ForEach {
	if ($pscmdlet.ShouldProcess($_.FullName, "Source")) {
		. $_.FullName
	}
}
