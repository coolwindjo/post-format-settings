#!/bin/bash

# 07_setup_antigravity_wsl.sh
# Sets up 'agy .' command to launch Google Antigravity in WSL.
# Reference: https://medium.com/google-cloud/working-with-google-antigravity-in-wsl-944c96c949f3

echo "Configuring Google Antigravity for WSL..."

BASHRC_FILE="$HOME/.bashrc"

if grep -q "agy()" "$BASHRC_FILE"; then
    echo "The agy() function is already configured in $BASHRC_FILE."
    exit 0
fi

cat << 'EOF' >> "$BASHRC_FILE"

# Google Antigravity WSL Integration
# Enables the `agy .` command to connect the current folder to WSL.
agy() {
    # Dynamically resolve Windows LOCALAPPDATA to find the Antigravity installation
    local WIN_LOCAL_APP_DATA=$(cmd.exe /c "echo %LOCALAPPDATA%" 2>/dev/null | tr -d '\r')
    
    if [ -n "$WIN_LOCAL_APP_DATA" ]; then
        local AG_EXE=$(wslpath -u "$WIN_LOCAL_APP_DATA/Programs/Antigravity/bin/antigravity" 2>/dev/null)
    else
        # Fallback path if cmd.exe fails
        local WIN_USER=$(whoami) # Fallback, might not match Windows username
        local AG_EXE="/mnt/c/Users/${WIN_USER}/AppData/Local/Programs/Antigravity/bin/antigravity"
    fi

    if [ -f "$AG_EXE" ]; then
        "$AG_EXE" --remote wsl+$WSL_DISTRO_NAME "$(pwd)"
    else
        echo "Antigravity executable not found at: $AG_EXE"
        echo "Please check your installation path."
        # If it's in the system PATH, we can try to run it directly
        command -v antigravity >/dev/null 2>&1 && antigravity --remote wsl+$WSL_DISTRO_NAME "$(pwd)"
    fi
}
EOF

echo "Successfully added 'agy' function to $BASHRC_FILE."
echo "Please run 'source ~/.bashrc' or open a new terminal to use the 'agy' command."
