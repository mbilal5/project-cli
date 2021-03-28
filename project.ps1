PARAM(
	[switch]
	$aspnet = $false,
	[switch]
	$bootstrap = $false,
	[switch]
	$jquery = $false,
	[Parameter(Position=0)]
	[string] $action = $null,
	[Parameter(Position=1)]
	[string] $target = ""
)



switch($action)
{
	create 
	{
		. "$PSScriptRoot/new-project" -aspnet:$aspnet -bootstrap:$bootstrap -jquery:$jquery
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