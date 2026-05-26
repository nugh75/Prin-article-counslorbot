# AGENTS.md — decision-log

Traccia ogni interazione umana–macchina nella revisione dell'articolo.
Formato: Markdown + YAML frontmatter. Output in `revisions/decision-log/`.

## Attivazione

Attiva questa skill quando:
- L'utente fa una proposta e tu aspetti una decisione (A/R/M)
- L'utente applica una modifica sostanziale all'articolo
- L'utente configura strumenti (Zotero, .env, etc.)
- L'utente chiede di «registrare», «loggare», «tracciare» una decisione

## Formato

Ogni `session-NNN.md` in `revisions/decision-log/`:

```yaml
---
session: "001"
date: 2026-05-26
tool: opencode
type: revision-bibliography
decision: accepted
rationale: "Motivazione della decisione"
items:
  - key: riferimento-bib
    status: added
---
```

Corpo Markdown: Contesto → Proposta macchina → Decisione umana → Modifiche → Note.

## Regole d'oro

1. Scrivi una nuova sessione dopo ogni blocco A/R/M completato.
2. Il frontmatter YAML è obbligatorio.
3. Aggiorna `index.md` dopo ogni nuova sessione.
4. Leggi l'ultima sessione prima di riprendere il lavoro.

## Tipi (`type`)

- `revision-bibliography`, `revision-content`, `revision-structure`
- `revision-style`, `revision-connector`, `revision-global`
- `setup-project`, `setup-zotero`, `human-note`, `reviewer-feedback`
- `version-bump`

## Decisioni (`decision`)

`accepted` | `rejected` | `modified` | `deferred` | `partial`

## Integrazione

- Ogni A/R/M di `article-revision` DEVE finire in `decision-log`.
- Ogni verifica `bibliography-verify` DEVE finire in `decision-log`.
- Vedi `SKILL.md` per la specifica completa.

## Struttura

```
revisions/decision-log/
├── index.md
├── session-001.md
└── ...
```
