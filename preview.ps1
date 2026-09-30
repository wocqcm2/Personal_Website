param(
  [switch]$BuildOnly,
  [switch]$Production,
  [ValidateRange(1, 65535)]
  [int]$Port = 4000
)

$ErrorActionPreference = 'Stop'
$workspaceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$rubyBin = 'C:\Ruby32-x64\bin'
$rubyExe = Join-Path $rubyBin 'ruby.exe'
if (-not (Test-Path -LiteralPath $rubyExe)) {
  throw "Ruby was not found at $rubyExe. Install Ruby 3.2 with Devkit first."
}

$driveLetter = @('S', 'T', 'U', 'V', 'W') | Where-Object { -not (Test-Path -LiteralPath "${_}:\") } | Select-Object -First 1
if (-not $driveLetter) { throw 'No free preview drive letter is available.' }
$drive = "${driveLetter}:"

& subst.exe $drive $workspaceRoot
if ($LASTEXITCODE -ne 0) { throw "Could not map $drive to the site directory." }

$previousLocation = Get-Location
$previousPath = $env:Path
try {
  Set-Location "${drive}\"
  $env:Path = "$rubyBin;$previousPath"
  $jekyllArgs = if ($BuildOnly) { @('build') } else { @('serve', '--host', 'localhost', '--port', "$Port") }
  $configFiles = if ($Production) { '_config.yml' } else { '_config.yml,_config_local.yml' }
  $jekyllArgs += @('--config', $configFiles)
  & $rubyExe -rbundler/setup -e 'load Gem.bin_path("jekyll", "jekyll")' -- @jekyllArgs
  $jekyllExitCode = $LASTEXITCODE
} finally {
  Set-Location $previousLocation
  $env:Path = $previousPath
  & subst.exe $drive /D | Out-Null
}

exit $jekyllExitCode
