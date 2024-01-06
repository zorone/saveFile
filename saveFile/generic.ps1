cd $env:USERPROFILE\AppData\LocalLow

$gameFile = "Path to game executable file."

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

start-process -filepath $gameFile -WindowStyle Maximized -Wait

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

    git add ".\Clever Endeavour Games\**"
    git add ".\It's Happening\**"
    git add ".\Steel Crate Games\**"
    git add ".\saveFile\**"
    $commitText = "Updated " + $dd + " T" + $dt
    git commit -a -m $commitText
}
git push --all
# SIG # Begin signature block
# MIIFgQYJKoZIhvcNAQcCoIIFcjCCBW4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUD0iKrQOcbXUKtuN3aeiG+jMi
# C16gggMaMIIDFjCCAf6gAwIBAgIQWohDqsiQpJBIksc24kAJrTANBgkqhkiG9w0B
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
# CSqGSIb3DQEJBDEWBBSZdgBwkeFrRMmcn88IeoxOAdP4ejANBgkqhkiG9w0BAQEF
# AASCAQDoKBAMGcCyDZ1xFP/Jd4u0xDdcafEiu1w/f7x46EFTp5Ojykkn0HyssCpo
# 6fALHYw51eX60pL9JnZSy4gb+iMU9/P20MVCzGp0xOqBkA39SN3nLmsNfZUqehEZ
# f4+pioW3LG3JL/vAJ/MP4AKKfqQbRJkhVW2GLw/U0MKEoUj1lqH8zeqmv/RY41ab
# JZqbJy9l7CLPqR3K4AR1swHnA5+THiVCQuYhAMJr1L0LFJJqLiqf4eEHvAF/ABsz
# 5THqwwfqckbPNtocnRV9Nsg8ZA5b0QobIr7jSs8WG/Rerw+h+qOuwnXCQbSOs6b0
# ARyGSokhpGWlZ10hPIM3YGjyg1A3
# SIG # End signature block
