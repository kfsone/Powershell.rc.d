# Switch to one of my "tinkering" projects.

$local:DEFAULT_BASE = [System.Environment]::GetEnvironmentVariable("TINKER_BASE")
if (! $local:DEFAULT_BASE) {
  $local:DEFAULT_BASE = "D:\Dev\Tinker"
}

Function Tinker
{
  [CmdletBindings(SupportsShouldProcess=$true)]
  Param(
    [String] $Language = "python",
    [String] $Base     = $local:DEFAULT_BASE
  )

  $destination = Join-Path $Base $Language
  if ($pscmdlet.ShouldProcess($destination, "Change Directory")) {
    Set-Location $destination
  }
}
