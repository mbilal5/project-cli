PARAM(
	[switch]
	$aspnet = $false,
	[switch]
	$bootstrap = $false,
	[switch]
	$jquery = $false
)

if ($aspnet)
{
	Copy-Item -Path $PSScriptRoot/aspnetcore/* -Destination . -Recurse
}

if ($bootstrap)
{
	Copy-Item -Path $PSScriptRoot/bootstrap/* -Destination . -Recurse
}

if ($jquery)
{
	Copy-Item -Path $PSScriptRoot/jquery/jquery.js -Destination .
}