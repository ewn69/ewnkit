#!/bin/bash

clear

# Define functions for each menu item
function disable_ipv6 {
    echo "Disabling IPv6..."
    # Insert command to disable IPv6 here
    bash <(curl -s https://raw.githubusercontent.com/ewn69/ewnkit/main/disable-ipv6.sh)
    echo "IPv6 disabled."
}

function restart_ssh {
    echo "Restarting SSH..."
    # Insert command to restart SSH here
    bash <(curl -s https://raw.githubusercontent.com/ewn69/ewnkit/main/restart-sshd.sh)
    echo "SSH restarted."
}

function stop_panel {
    echo "Stopping Pterodactyl Panel..."
    # Insert command to stop Pterodactyl Panel here
    bash <(curl -s https://raw.githubusercontent.com/ewn69/ewnkit/main/stop-pterodactyl.sh)
    echo "Pterodactyl Panel stopped."
}

function start_panel {
    echo "Starting Pterodactyl Panel..."
    # Insert command to start Pterodactyl Panel here
    bash <(curl -s https://raw.githubusercontent.com/ewn69/ewnkit/main/start-pterodactyl.sh)
    echo "Pterodactyl Panel started."
}

function stop_wings {
    echo "Stopping Pterodactyl Wings..."
    # Insert command to stop Pterodactyl Wings here
    bash <(curl -s https://raw.githubusercontent.com/ewn69/ewnkit/main/stop-wings.sh)
    echo "Pterodactyl Wings stopped."
}

function start_wings {
    echo "Starting Pterodactyl Wings..."
    # Insert command to start Pterodactyl Wings here
    bash <(curl -s https://raw.githubusercontent.com/ewn69/ewnkit/main/start-wings.sh)
    echo "Pterodactyl Wings started."
}

# Display menu options
echo "+==== EwnKit Main Menu ====+"
echo "[1] Disable IPv6"
echo "[2] Restart SSH"
echo "+==== Helpful Things ====+"
echo "[3] Stop Pterodactyl Panel"
echo "[4] Start Pterodactyl Panel"
echo "[5] Stop Pterodactyl Wings"
echo "[6] Start Pterodactyl Wings"

# Ask for user input
read -p "Enter a menu number: " choice

# Execute selected function
case $choice in
    1) 
        read -p "Are you sure you want to disable IPv6? [Y/N]: " confirm
        if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
            disable_ipv6
        fi
        ;;
    2) 
        read -p "Are you sure you want to restart SSH? [Y/N]: " confirm
        if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
            restart_ssh
        fi
        ;;
    3) 
        read -p "Are you sure you want to stop Pterodactyl Panel? [Y/N]: " confirm
        if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
            stop_panel
        fi
        ;;
    4) 
        read -p "Are you sure you want to start Pterodactyl Panel? [Y/N]: " confirm
        if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
            start_panel
        fi
        ;;
    5) 
        read -p "Are you sure you want to stop Pterodactyl Wings? [Y/N]: " confirm
        if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
            stop_wings
        fi
        ;;
    6) 
        read -p "Are you sure you want to start Pterodactyl Wings? [Y/N]: " confirm
        if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
            stop_wings
        fi
        ;;
    *) echo "Invalid option selected."
       ;;
esac
