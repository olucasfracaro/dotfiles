#!/bin/bash

# Verifica o estado atual do Bluetooth
STATUS=$(bluetoothctl show | grep "Powered: yes" > /dev/null && echo "on" || echo "off")

# Alterna o estado
if [ "$STATUS" = "on" ]; then
    bluetoothctl power off
    systemctl stop bluetooth
    echo "Bluetooth: Off"  # Mensagem para o módulo
    exit 0
else
    bluetoothctl power on
    systemctl start bluetooth
    echo "Bluetooth: On"  # Mensagem para o módulo
    exit 0
fi
