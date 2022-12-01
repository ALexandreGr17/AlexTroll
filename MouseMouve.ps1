$MYJOB = Start-Job -ScriptBlock {

$MOVEMENTSIZE = 500
$SLEEPTIME = 0.5
Add-Type -AssemblyName System.Windows.Forms
while ($true) {
$POSITION = [Windows.Forms.Cursor]::Position
$rx =  Get-Random -Maximum 500 -Minimum -500
$ry =  Get-Random -Maximum 500 -Minimum -500
$POSITION.x += ($MOVEMENTSIZE + $rx)
$POSITION.y += ($MOVEMENTSIZE + $ry)
[Windows.Forms.Cursor]::Position = $POSITION
Start-Sleep -Seconds $SLEEPTIME
$POSITION = [Windows.Forms.Cursor]::Position
$POSITION.x -= $MOVEMENTSIZE
$POSITION.y -= $MOVEMENTSIZE
[Windows.Forms.Cursor]::Position = $POSITION
Start-Sleep -Seconds $SLEEPTIME
}
}
