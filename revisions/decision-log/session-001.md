---
session: "001"
date: 2026-05-26
tool: opencode
type: setup-project
decision: accepted
rationale: "Struttura standard richiesta dalla skill article-revision per articoli Roma TrE-PRESS"
items:
  - path: .env
    status: created
  - path: articles/article-v1-2026-05-26.md
    status: created
  - path: bibliography/reference.bib
    status: created
  - path: editorial-norms/norms.md
    status: copied
  - path: data/
    status: created
  - path: revisions/
    status: created
---

## Contesto

Prima interazione: inizializzazione del progetto per l'articolo
«Counselorbot: un assistente AI per il counseling».

## Proposta macchina

Creazione della struttura del progetto seguendo il layout richiesto dalla skill
`article-revision`:

```
<project-root>/
├── .env
├── articles/
├── bibliography/
├── editorial-norms/
├── data/
└── revisions/
```

Norme editoriali copiate dal progetto gemello «Prin-orienta+» (stessa rivista:
Roma TrE-PRESS, stesso limite 30.000 battute).

## Decisione umana

Accettato.

## Modifiche applicate

- Creato `.env` con EDITORIAL_LIMIT_CHARS=30000, ARTICLE_LANG=it,
  EDITORIAL_NORMS_PATH, BIBLIOGRAPHY_BIB_PATH
- Creato scheletro articolo v1 con titolo approvato
- Creato `bibliography/reference.bib` vuoto
- Copiato `editorial-norms/norms.md` da Prin-orienta+
- Create directory `data/` e `revisions/`

## Note

La collezione Zotero va creata ex novo (group ID sarà fornito separatamente).
