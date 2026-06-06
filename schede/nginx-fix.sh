#!/usr/bin/env bash
# Diagnostica e risolve l'accesso di nginx ai PDF in /home/nugh75/
# Esegui con: sudo bash schede/nginx-fix.sh

set -e

echo "=== Diagnostica accesso nginx ==="

# Test lettura come www-data
if sudo -u www-data cat /home/nugh75/Prin-article-counslorbot/schede/index.html > /dev/null 2>&1; then
    echo "✓ www-data puo' leggere i file"
    echo "✓ Configurazione nginx gia' funzionante"
    echo ""
    echo "URL: https://code.ai4educ.org/pdf/"
    exit 0
fi

echo "✗ www-data NON puo' leggere i file in /home/nugh75/"
echo ""

# Mostra permessi attuali
echo "Permessi attuali:"
namei -l /home/nugh75/Prin-article-counslorbot/schede/index.html 2>/dev/null

echo ""
echo "=== Soluzione: aggiungo www-data al gruppo nugh75 ==="
usermod -aG nugh75 www-data
echo "✓ www-data aggiunto al gruppo nugh75"

echo "→ Verifico..."
if sudo -u www-data cat /home/nugh75/Prin-article-counslorbot/schede/index.html > /dev/null 2>&1; then
    echo "✓ www-data ora puo' leggere i file"
else
    echo "✗ Ancora non accessibile, provo chmod..."
    chmod o+rx /home/nugh75
    if sudo -u www-data cat /home/nugh75/Prin-article-counslorbot/schede/index.html > /dev/null 2>&1; then
        echo "✓ Ora accessibile con chmod o+rx"
    else
        echo "✗ Problema persistente. Verifica manuale necessaria."
        exit 1
    fi
fi

# Ricarica nginx per sicurezza
echo "→ Ricarico nginx..."
nginx -t && systemctl reload nginx

echo ""
echo "========================================"
echo "  Fatto! Prova:"
echo "  curl -s -o /dev/null -w '%{http_code}' http://localhost/pdf/"
echo "========================================"
