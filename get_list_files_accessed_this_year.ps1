#This little script lists the files accessed within the last year

$path = "source path"
$year = "01.01.2017"

Get-ChildItem $path -Recurse -ErrorAction SilentlyContinue | Select-Object -Property Name,LastAccessTime,CreationTime | Where-Object {$_.LastAccessTime -cge $year} | Out-GridView

