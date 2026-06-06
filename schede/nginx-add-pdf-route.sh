#!/usr/bin/env bash
# Aggiunge la route /pdf a nginx per servire i PDF senza VPN
# Esegui con: sudo bash schede/nginx-add-pdf-route.sh

set -e

CONFIG="/etc/nginx/sites-available/code.ai4educ.org.conf"
LOCAL_CONFIG="$(dirname "$0")/code.ai4educ.org.conf"

echo "→ Copio il config nginx con la location /pdf/ inclusa..."
cp "$LOCAL_CONFIG" "$CONFIG"

echo "→ Verifico configurazione nginx..."
nginx -t

echo "→ Ricarico nginx..."
systemctl reload nginx

echo ""
echo "========================================"
echo "  OK! PDF disponibili su:"
echo "  https://code.ai4educ.org/pdf/"
echo "========================================"
