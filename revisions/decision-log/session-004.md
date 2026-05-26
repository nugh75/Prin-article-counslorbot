---
session: "004"
date: 2026-05-26
tool: opencode
type: setup-zotero
decision: accepted
rationale: "Collezione Zotero ex novo (come da indicazione utente), stesse credenziali del progetto ORIENTA+"
items:
  - key: ZOTERO_GROUP_ID
    value: "6566336"
    status: configured
  - key: ZOTERO_USER_ID
    value: "6198601"
    status: configured
  - key: ZOTERO_LIBRARY_TYPE
    value: group
    status: configured
---

## Contesto

L'utente aveva richiesto di non copiare la collezione Zotero da ORIENTA+
(«L'unica cosa da non prendere è la collezione Zotero che devo creare ex novo»).
Successivamente ha fornito il group ID: 6566336.

## Proposta macchina

Aggiornare `.env` con le credenziali Zotero. Verifica che l'user ID e API key
siano gli stessi del progetto ORIENTA+.

## Decisione umana

Confermato: stessi user ID e API key.

## Modifiche applicate

- `.env`: scommentate e valorizzate le variabili ZOTERO_API_KEY, ZOTERO_USER_ID,
  ZOTERO_LIBRARY_TYPE, ZOTERO_GROUP_ID

## Note

La ZOTERO_API_KEY è in chiaro nel `.env`. Da non committare se il repo è pubblico.
