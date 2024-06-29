net session >nul 2>&1

if ($lastExitCode -ne 0) {
    start-process powershell -Verb RunAs
}

cd %USERPROFILE%\AppData\LocalLow

git init
git lfs install
git remote add origin https://github.com/zorone/saveFile.git
git reset origin/master
git checkout -t origin/master
git lfs pull