# CLI

## BAT

### 等号左右两边不可以加空格

SET %PROCESS_PATH% = "C:\Users\K20075306\Documents\UiPath\Overwrite\Main.xaml"

SET %PROCESS_PATH%="C:\Users\K20075306\Documents\UiPath\Overwrite\Main.xaml"

## Powershell

### Info

cmdlets 是 Powershell 的内部命令，cmdlet 的类型名为 System.Management.Automation.CmdletInfo
每个命令由一个动词和名词组成，命令的作用一目了然。

### 变量

变量的前缀为$
powershell变量名大小写不敏感（$a 和\$A 是同一个变量)
某些特殊的字符在 powershell 中有特殊的用途，一般不推荐使用这些字符作为变量名。当然你硬要使用，请把整个变量名后缀用花括号括起来

Powershell 将变量的相关信息的记录存放在名为 variable:的驱动中
如果要查看所有定义的变量
ls variable:

### Pipeline(管道)

A pipeline is a series of commands connected by pipeline operators (|) (ASCII 124). Each pipeline operator sends the results of the preceding command to the next command.

### others

/?

> >

```get-childItem -Name -Recurse -Include *.xaml [-Exclude *.json]```

`tree /f`

ConvertFrom-Json
Select-Object



#### Redirecting Data with Out- Cmdlets

#### Using Format Commands to Change Output View

Get-Process | Out-File -FilePath C:\temp\processlist.txt

### Alias

|   Alias   |    Commond     |
| :-------: | :------------: |
|     %     |                |
|     ?     |  Where-Object  |
|           |                |
| cd/chdir  |  Set-Location  |
| cls/clear |                |
|    clc    |                |
|   diff    | Compare-Object |
|   echo    |  Write-Output  |
|    fl     |  Format-List   |
|    ii     |  Invoke-Item   |
|    ls     | Get-ChildItem  |
|    gcm    |  Get-Command   |
|           |                |
|           |                |
|           |                |
|           |                |
|           |                |
|           |                |
|           |                |

## Cmdlet

ConvertTo-Json
