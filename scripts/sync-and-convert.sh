#!/usr/bin/env bash
# Genera current.docx; con --sync-source aggiorna prima current.md.
set -euo pipefail

ARTICLES_DIR="$(dirname "$0")/../articles"
SCRIPTS_DIR="$(dirname "$0")"

if [ "${1:-}" = "--sync-source" ]; then
    # Trova l'ultima versione articolo (più recente per nome file).
    LATEST=$(find "$ARTICLES_DIR" -maxdepth 1 -type f -name 'article-v*.md' -print \
        | sort -V | tail -1)

    if [ -z "$LATEST" ]; then
        echo "Nessun article-v*.md trovato in $ARTICLES_DIR"
        exit 1
    fi

    echo "Ultima versione: $(basename "$LATEST")"
    cp "$LATEST" "$ARTICLES_DIR/current.md"
    echo "✓ current.md aggiornato"
elif [ ! -f "$ARTICLES_DIR/current.md" ]; then
    echo "File non trovato: $ARTICLES_DIR/current.md"
    exit 1
fi

# Rigenera il template di riferimento
python3 "$SCRIPTS_DIR/create-docx-template.py" "$ARTICLES_DIR/reference.docx"

# Converti in docx
pandoc "$ARTICLES_DIR/current.md" \
    --from markdown \
    --to docx \
    --reference-doc="$ARTICLES_DIR/reference.docx" \
    --output="$ARTICLES_DIR/current.docx"

echo "✓ current.docx generato ($(du -h "$ARTICLES_DIR/current.docx" | cut -f1))"
