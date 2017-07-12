$targetDir = 'targetDir'
$pattern = '*.txt *.log'
$expiryDays = 0

Get-ChildItem -Recurse -File -Include $pattern -LiteralPath $targetDir | `
    Where-Object {
        ((Get-Date) - $_.CreationTime).TotalDays -ge $expiryDays
    } | `
    Remove-Item -WhatIf
# 移除 `-WhatIf` 参数，执行真正的删除操作。