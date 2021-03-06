##################################Delete#################################################################

 

Get-ChildItem -Path E:\Ptest -Include *.txt* -Recurse | foreach { $_.Delete()}

Get-ChildItem E:\Ptest\*.xls -Filter *.xls |

Rename-Item -NewName {[System.IO.path]::ChangeExtension($_.Name, ".txt")}

 

 

 

#########################################Rename###########################################################

 

Get-ChildItem -Path E:\Ptest -Include *.txt* -Recurse |Foreach-Object { Rename-Item $_ -NewName ("{0}-{1}{2}" -f $_.BaseName,$_.LastWriteTime.ToString('yyyyMMdd'),$_.Extension)  }

Get-ChildItem E:\Ptest\*.xls -Filter *.xls |

Rename-Item -NewName {[System.IO.path]::ChangeExtension($_.Name, ".txt")}

 