###############################################################################
# Unix-like "grep"

Function Grep-String
{
  Param(
    [Parameter(Mandatory=$true)]
    [String] $Pattern,
    [String[]] $Files = "*.*",
    [Switch] $CaseSensitive,
    [Switch] $Recursive
  )

  Get-ChildItem -Recursive:$Recursive -Include $Files | Select-String -Pattern $Pattern -CaseSensitive:$CaseSensitive
}

