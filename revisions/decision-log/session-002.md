---
session: "002"
date: 2026-05-26
tool: opencode
type: revision-bibliography
decision: accepted
rationale: "Riferimenti necessari per articolo su AI counseling. Blocchi A–G approvati senza modifiche"
items:
  - type: reference
    key: vaswani2017
    status: added
  - type: reference
    key: brown2020
    status: added
  - type: reference
    key: xi2023
    status: added
  - type: reference
    key: weizenbaum1966
    status: added
  - type: reference
    key: fulmer2019
    status: added
  - type: reference
    key: li2023npj
    status: added
  - type: reference
    key: cho2026
    status: added
  - type: reference
    key: heinz2025
    status: added
  - type: reference
    key: foran2024
    status: added
  - type: reference
    key: liu2023
    status: added
  - type: reference
    key: inaba2024
    status: added
  - type: reference
    key: zhang2024vcounselor
    status: added
  - type: reference
    key: nie2024
    status: added
  - type: reference
    key: qiu2024
    status: added
  - type: reference
    key: blease2025
    status: added
  - type: reference
    key: tal2023
    status: added
  - type: reference
    key: haber2024
    status: added
  - type: reference
    key: tavory2024
    status: added
  - type: reference
    key: park2024
    status: added
---

## Contesto

Il `reference.bib` era vuoto. Necessità di popolarlo con riferimenti pertinenti
per un articolo sullo sviluppo di un assistente AI per il counseling.

## Proposta macchina

Ricerca automatica su Web of Science / Google Scholar / arXiv di riferimenti
in 7 blocchi tematici:

- **A** Fondamenti LLM (riciclati da ORIENTA+)
- **B** Storico (ELIZA, Fulmer)
- **C** Revisioni sistematiche (npj Digital Medicine, JMIR AI)
- **D** RCT clinici (Therabot NEJM, Zenny JMIR)
- **E** Sistemi LLM (ChatCounselor, Inaba 2024, VCounselor, CaiTI, PsyChat)
- **F** Etica (Blease, Artificial Third ×2, Tavory)
- **G** Human–AI interaction (Park 2024)

## Decisione umana

Accettato tutto (risposta «A»).

## Modifiche applicate

- Scritto `bibliography/reference.bib` con 19 referenze in formato BibTeX
  conforme allo stile Roma TrE-PRESS

## Note

Le referenze includono DOI dove disponibili. Per gli arXiv preprint,
usato tipo @misc con identificativo arXiv.
