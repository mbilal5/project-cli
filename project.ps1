PARAM(
	[switch]
	$aspnet = $false,
	[switch]
	$bootstrap = $false,
	[switch]
	$jquery = $false,
	[Parameter(Position=0)]
	[string] $action = $null
)



switch($action)
{
	create 
	{
		. "$PSScriptRoot/new-project" -aspnet:$aspnet -bootstrap:$bootstrap -jquery:$jquery
	}
	
	default
	{
		Write-Host "// todo: Usage"
	}
}