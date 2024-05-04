$RootFolder = "F:\RootFolder"
$SubFolders = Get-ChildItem -Path $RootFolder -Directory

Foreach($SubFolder in $SubFolders)
{ 
    $jpgPath = "$($SubFolder.FullName)\jpg"
    New-Item -Path $jpgPath -ItemType Directory -Force
    $jpgFiles = Get-ChildItem -Path $SubFolder.FullName -Filter "*.jpg"
    Foreach($jpgFile in $jpgFiles)
    {
        Move-Item -Path $jpgFile.FullName -Destination "$jpgPath\"
    }
}