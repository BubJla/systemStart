#!/bin/bash
# Installiere speedtest-cli, wenn es noch nicht installiert ist
echo "1"
if ! command -v speedtest &> /dev/null; then
    echo "speedtest-cli ist nicht installiert. Installiere es jetzt..."
    pip install speedtest-cli
fi

# Führe den Geschwindigkeitstest aus und extrahiere die Downloadrate
download_speed=$(speedtest-cli --simple | awk '/Download/{print $2}')

# Gib die Downloadrate aus
echo "Downloadrate: $download_speed"
