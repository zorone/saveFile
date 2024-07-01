cd $env:USERPROFILE\AppData\LocalLow

ping 1.1.1.1

if ($lastExitCode -eq 1) {
    echo "Please connect to internet to prevent syncing issue."
}

git pull

if ($lastExitCode -eq 1) {
    $dd = (Get-date).ToString("yyyyMMdd")
    $dt = (Get-date).ToString("HHmmss")
    $text = get-Content -Path .\saveFile\version.txt
    $branch = $text + "_" + $dd + "T" + $dt

    git stash branch $branch
    git pull --all
    git push --all
}

start-process -filepath "C:\games\PlateUp.v1.1.8\PlateUp.exe" -WindowStyle Maximized -Wait

git pull

if ($lastExitCode -eq 1) {
    $dd = (Get-date).ToString("yyyyMMdd")
    $dt = (Get-date).ToString("HHmmss")
    $text = get-Content -Path .\saveFile\version.txt
    $branch = $text + "_" + $dd + "T" + $dt

    git stash branch $branch
    git pull --all

} else {
    $dd = (Get-date).ToString("yyyyMMdd")
    $dt = (Get-date).ToString("HHmmss")
    $commitText = "Updated " + $dd + " T" + $dt

    git add ".\Clever Endeavour Games\**"
    git add ".\GrosChevaux\**"
    git add ".\It's Happening\**"
    git add ".\Steel Crate Games\**"
    git add ".\saveFile\**"
    git commit -a -m $commitText
}
git push --all