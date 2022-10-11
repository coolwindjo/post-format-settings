vncserver -kill :$1
# Find vnc display
type ps -aux | greap vnc
