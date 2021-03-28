PARAM(
	[string] $target = "Main.java"
)

if ($target.EndsWith('.java') -eq $false)
{
	$target = $target + ".java"
}

javac $target -d "build"
java -classpath "build" $target.Replace('.java', '')