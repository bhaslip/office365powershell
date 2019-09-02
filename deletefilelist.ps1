$filenames = Get-Content -Path "C:\filenames.txt"
$deletePath = "C:\DeletePath\"

foreach ($file in $filenames)
{
    Remove-Item -Path "$deletePath\$file"
}