PARAM(
	[switch]
	$bootstrap = $false,
	[switch]
	$jquery = $false,
	[switch]
	$fontawesome = $false,
	[string] $destination = "."
)


if ($bootstrap)
{
	Copy-Item -Path $PSScriptRoot/bootstrap -Destination $destination -Recurse
}

if ($jquery)
{
	Copy-Item -Path $PSScriptRoot/jquery/jquery.js -Destination $destination
}

if ($fontawesome)
{
	Copy-Item -Path $PSScriptRoot/fontawesome -Destination $destination -Recurse
}