# Get-ChildItem -Recurse | Rename-Item -NewName {'000528_' + $_.Name}
# tree | Out-File "C:\Users\K20075306\Desktop\fk.txt"
# Get-ChildItem -Recurse -File | Move-Item -Destination ""

$imgs = Get-ChildItem -Path "D:\Notebooks"
$i = 1
foreach($img in $imgs){
    $nn = ("Snip_" + $i.ToString() +".png")
    Rename-Item -Path $img.FullName -NewName $nn
    $i++
}

<#
$files = Get-ChildItem -Path "E:\AA_OCR\dm" -Recurse
foreach($child in $files){
#     $child.Name
#     $child.fullname
#     $child | Get-Member
    $child.Extension
    $child.Exists
    $child.GetType()
}
#>


<#
    System.IO.FileInfo
    GetType()
    Extension: 后缀名(.txt, .doc)
    Name 有后缀名(.png, .pdf...), BaseName 没有后缀名
    DirectoryName 是String型, Directory是对象
#>
