PARAM(
	[switch]
	$aspnet = $false,
	[switch]
	$bootstrap = $false,
	[switch]
	$jquery = $false,
	[switch]
	$fontawesome = $false,
	[string] $destination = "."
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

if ($fontawesome)
{
	Copy-Item -Path $PSScriptRoot/fontawesome -Destination $destination -Recurse
}