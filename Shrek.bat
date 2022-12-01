powershell.exe Invoke-WebRequest -Uri "https://github.com/bobthehuge/BobTroll/blob/main/shrek/shrek.tar.gz?raw=true" -OutFile .\shrek.tar.gz; tar -xvf ./shrek.tar.gz; start shrek.mp4
del shrek.tar.gz
