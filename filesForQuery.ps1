
#Refresh objects
$files = $null;
$outfile = $null;

#Grab filenames without extensions
$files = Get-ChildItem -File | Select-Object basename

#Build up string
foreach($file in $files){
    $outfile += $file.BaseName + ', '; 
}

#Bazinga
'(' + $outfile.Substring(0, $outfile.Length-2) + ')' | Out-File -FilePath output.csv
