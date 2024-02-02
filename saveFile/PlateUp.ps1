cd $env:USERPROFILE\AppData\LocalLow

ping 1.1.1.1

if ($lastExitCode -eq 1) {
    echo "Please connect to internet to prevent syncing issue."
    Write-Host -NoNewLine 'Press any key to continue...'; # https://stackoverflow.com/a/20886446
    $prompt = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
}

git pull
git lfs pull

if ($lastExitCode -eq 1) {
    $dd = (Get-date).ToString("yyyyMMdd")
    $dt = (Get-date).ToString("HHmmss")
    $text = get-Content -Path .\saveFile\version.txt
    $branch = $text + "_" + $dd + "T" + $dt

    git stash branch $branch
    git pull --all
    git lfs pull
    git push --all
}

start-process -filepath "C:\Users\ASUS\Downloads\x360ce_4.17.15\x360ce.exe" -WindowStyle Minimized
start-process -filepath "C:\games\PlateUp.v1.1.8\PlateUp.exe" -WindowStyle Maximized -Wait

git pull
git lfs pull

if ($lastExitCode -eq 1) {
    $dd = (Get-date).ToString("yyyyMMdd")
    $dt = (Get-date).ToString("HHmmss")
    $text = get-Content -Path .\saveFile\version.txt
    $branch = $text + "_" + $dd + "T" + $dt

    git stash branch $branch
    git pull --all
    git pull lfs

} else {
    $dd = (Get-date).ToString("yyyyMMdd")
    $dt = (Get-date).ToString("HHmmss")
    $commitText = "Updated " + $dd + " T" + $dt

    git add ".\Clever Endeavour Games\**"
    git add ".\It's Happening\**"
    git add ".\Steel Crate Games\**"
    git add ".\saveFile\**"
    git commit -a -m $commitText
}
git push --all
if ($lastExitCode -eq 1) {
    echo "There are some issues, please take a snapshot of this error, and sent to publisher."
    Write-Host -NoNewLine 'Press any key to continue...'; # https://stackoverflow.com/a/20886446
    $prompt = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
}
# SIG # Begin signature block
# MIIFgQYJKoZIhvcNAQcCoIIFcjCCBW4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUyGyR9IgE/6QDRWpCl5mTHSlm
# WaigggMaMIIDFjCCAf6gAwIBAgIQWohDqsiQpJBIksc24kAJrTANBgkqhkiG9w0B
# AQsFADAcMQswCQYDVQQGEwJUSDENMAsGA1UEAwwEcm96bjAeFw0yNDAxMDYwNTU2
# MDZaFw0yNTAxMDYwNjE2MDZaMBwxCzAJBgNVBAYTAlRIMQ0wCwYDVQQDDARyb3pu
# MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA+gOH+7OYOO+Fio6P8GzB
# yL72qfbgxLfWXTAZZuc02HmVbxm1rzW+cAhBbBXKVhSHwKJl3WgZu8FrhtsWq2gj
# +pOLzY2h+IRtmlPOBXCBlOzvNOKl+G3mniHFNp92Tp8gp6xnFY+lUGdRe+tHQx3e
# j1bpmIIoF+SWvbx7dY87kDFRaPg9aQC2U14XvKyTHwlfFk1ckTrR2ao8MslXbvtt
# CR0hANDSAAo3TzcnX0UKcrvs88FglWuMoDTjnqM+Da2TMVfxjjRyjIOU3z8XLxF9
# IqmTzc6Oc6x0H3iCK9U8wR3mQzP73rXaxCIF7XGfBjRdS2yIwkuAxqRQydUYrXdq
# bQIDAQABo1QwUjAOBgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAwwCgYIKwYBBQUHAwMw
# DAYDVR0TAQH/BAIwADAdBgNVHQ4EFgQUXYfyXF4bzun4jzvNCkJM99lef0IwDQYJ
# KoZIhvcNAQELBQADggEBAA54A8Yxk1edg9pdQMDfZzHOo/UHptAI5GWIlRMQFuO5
# mtorD6DGG2KSfaqSFjJQNlhByjScLX48/x8oZgsHm3YEX+KEJedpo7g/eLvkqGzh
# EvFi67b10ujFrs4xHS/SLrp1gnXchpv3YoVOcXDajZoE9QbzUglhnoWlr8Kfu/Q9
# 77D/iDNCNeYA3QXKlhJ6pgMDQhhXswF9Cb+V+4ln1i+M0UWaVXVI3LfsPHPcfMfP
# MzhnPPGZlcbQHJbOzOkGBMN0I8JTdX3zV+CvHmsLNL9FiQ9QUzR3tuOZGcL0hDEC
# nGtGGDftrjiwnPisquf1icphymVt+RRT7KYu4TSebBkxggHRMIIBzQIBATAwMBwx
# CzAJBgNVBAYTAlRIMQ0wCwYDVQQDDARyb3puAhBaiEOqyJCkkEiSxzbiQAmtMAkG
# BSsOAwIaBQCgeDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJ
# AzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMG
# CSqGSIb3DQEJBDEWBBRPcwZPEumU/y3AgtyQvq/UObzbMTANBgkqhkiG9w0BAQEF
# AASCAQBX8Q2ZBEZ3sIac2oYx2tXcu9VgI9ApPzcRPiQKn8hkQ4s0hRm7dJRCd2OC
# 0Ad/9fk1Wb7o1IRCXgZtMZQ0C0BN1UcnsEAdKbiZ192lJv3vXHlm1CGKmdbtV1RJ
# ihTMZgQdgB+qGrqeWOl93JpnHir2JM4ppnbOt+5XeadZUiTjhMn8y4z3wisP/RVC
# pUEmJDLo2mijrshQIFFT2spXyp+3f8pLcH4S2AbZQui22e+M7iIb5ZH7mg1JL5C7
# o9QiKEsLdqVOH1xVfLf8fRoxN/ZauaiN1rWgp0lDWhj+cGON0EAquNO8RJbNSnO/
# s9vOuiMm2a48MowFNRDa05pW6emo
# SIG # End signature block
