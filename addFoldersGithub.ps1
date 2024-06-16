# Get the current folder path
$currentFolderPath = Get-Location

# Get all subfolders in the current folder
$subfolders = Get-ChildItem -Path $currentFolderPath -Directory

# Loop through each subfolder
foreach ($subfolder in $subfolders) {
    # Generate a random character
    $randomCharacter = -join ((65..90) + (97..122) | Get-Random -Count 1 | ForEach-Object {[char]$_})

    # Create a file with the random character in the subfolder
    $filePath = Join-Path -Path $subfolder.FullName -ChildPath "random.txt"
    $randomCharacter | Out-File -FilePath $filePath -Encoding ASCII
}