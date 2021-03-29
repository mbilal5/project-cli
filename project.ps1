PARAM(
	[switch]
	$aspnet = $false,
	[switch]
	$bootstrap = $false,
	[switch]
	$jquery = $false,
	[switch]
	$fontawesome = $false,
	[Parameter(Position=0)]
	[string] $action = $null,
	[Parameter(Position=1)]
	[string] $target = "",
	[string] $destination = ""
)



switch($action)
{
	create 
	{
		if ($destination)
		{
			. "$PSScriptRoot/new-project" -aspnet:$aspnet -bootstrap:$bootstrap -jquery:$jquery -fontawesome:$fontawesome -destination $destination
		}
		else
		{
			. "$PSScriptRoot/new-project" -aspnet:$aspnet -bootstrap:$bootstrap -jquery:$jquery -fontawesome:$fontawesome
		}
	}
	
	run
	{
		if ($target)
		{
			. "$PSScriptRoot/run-java" $target
		}
		else
		{
			. "$PSScriptRoot/run-java"
		}
	}
	
	default
	{
		Write-Host "// todo: Usage"
	}
}