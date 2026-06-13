# Workflow articolo — sync & docx

## Cos'è

`current.md` e `current.docx` rispecchiano la versione di lavoro dell'articolo. La sincronizzazione della sorgente e la sola conversione DOCX sono operazioni distinte, così una revisione importata da Drive non viene sovrascritta accidentalmente.

## Comandi

```bash
# Sync + conversione (tutto in un colpo)
make sync

# Converte current.md senza modificarlo
make docx

# Mostra il path per aprire il file
make docx-serve
```

## Cosa fa `make sync`

1. Trova l'ultimo `articles/article-v*.md` (ordinamento per versione)
2. Lo copia su `articles/current.md`
3. Rigenera `articles/reference.docx` (template Times New Roman, nero)
4. Converte `current.md` → `current.docx` via pandoc

## Revisioni da Drive

Le modifiche dei collaboratori vengono importate dall'interfaccia AI4Educ in
`collaboration/inbox/` come snapshot datati:

- il DOCX originale scaricato da Drive;
- una candidata Markdown da confrontare con `articles/current.md`;
- commenti Drive in JSON e Markdown;
- metadati dell'importazione.

L'importazione non modifica `current.md` o `current.docx`. Dopo aver confrontato
la candidata, l'azione **Accetta come nuova versione** aggiorna `current.md` e
crea un nuovo `article-v*.md`. A quel punto esegui `make docx` e pubblica il
documento aggiornato sullo stesso link Drive.

## Dipendenze

- `pandoc` (installato)
- `python-docx` (installato, per generare il template)

## Struttura

```
articles/
  current.md          ← copia dell'ultimo article-v*.md
  current.docx        ↔ convertito da current.md
  reference.docx        template di formattazione
  article-v*.md         versioni dell'articolo

scripts/
  sync-and-convert.sh       script principale
  create-docx-template.py   genera reference.docx

docs/
  workflow.md               questo file
```

## Note

- Il template `reference.docx` ha: Times New Roman 12pt, interlinea 1.5, margini 3cm/2.5cm, titoli in nero (nessun colore blu).
- Se vuoi modificare la formattazione, modifica `scripts/create-docx-template.py` e rilancia `make sync`.
- Se serve un template diverso (es. quello della rivista), passa il file .docx come `--reference-doc=` nello script.
