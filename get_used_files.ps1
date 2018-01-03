#This little script counts how many files ther are and how many were accessed an created within the last year

$path = "source"
$year = "01.01.2017"

$list = Get-ChildItem $path -Recurse -ErrorAction SilentlyContinue | Select-Object -Property Name,LastAccessTime,CreationTime

$accessed = ($list | Where-Object {$_.LastAccessTime -cge $year}).Count
$created = ($list | Where-Object {$_.CreationTime -cge $year}).Count
$total = $list.Count
echo "in the directory $path are:"
echo "total: $total"
echo "Number of files accessed after $year : $accessed"
echo "Number of files created after $year : $created" 