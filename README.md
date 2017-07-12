# Remove-OldFiles
清除指定文件夹中过期的文件。

## 参数说明

- `$targetDir` 为待清理的目录。
- `$pattern` 为待清理的文件名，支持通配符。
- `$expiryDays` 为过期时间，单位是天。

## 计划任务

若要定期执行脚本，请创建计划任务。计划任务的“启动程序”设置如下：

- “程序或脚本”填 powershell
- “添加参数”填 -NoProfile -ExecutionPolicy Unrestricted .\Remove-OldFiles.ps1
- “起始于”填脚本所在的目录