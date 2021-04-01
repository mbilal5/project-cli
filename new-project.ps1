PARAM(
	[switch]
	$aspnet = $false
)



if ($aspnet)
{
	Copy-Item -Path $PSScriptRoot/aspnetcore/* -Destination . -Recurse
}