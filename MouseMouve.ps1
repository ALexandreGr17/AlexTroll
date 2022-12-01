$MYJOB = Start-Job -ScriptBlock {

$MOVEMENTSIZE = 500
$SLEEPTIME = 500

Add-Type -AssemblyName System.Windows.Forms
while ($true) {
$POSITION = [Windows.Forms.Cursor]::Position
$POSITION.x += ($MOVEMENTSIZE + Get-Random -Maximum 500 -Minimum -500)
$POSITION.y += ($MOVEMENTSIZE + Get-Random -Maximum 500 -Minimum -500)
[Windows.Forms.Cursor]::Position = $POSITION
Start-Sleep -Milliseconds $SLEEPTIME
$POSITION = [Windows.Forms.Cursor]::Position
$POSITION.x -= $MOVEMENTSIZE
$POSITION.y -= $MOVEMENTSIZE
[Windows.Forms.Cursor]::Position = $POSITION
Start-Sleep -Seconds $SLEEPTIME
}
}
