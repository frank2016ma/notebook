$sourceFolder = "F:\data"

$dirs = Get-ChildItem -Path $sourceFolder -Directory -Recurse
$logFile = "C:\Users\K20075306\Desktop\list.txt"
foreach($dir in $dirs){
    $dir.FullName
    $files = Get-ChildItem -Path $dir.FullName -File -Recurse
    foreach($file in $files){
        $file.FullName | Out-File $logFile -Append
    }
}