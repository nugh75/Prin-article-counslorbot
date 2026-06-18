---
article: articles/article-v40-2026-06-18-2212.md
version: v40-2026-06-18-2212
timestamp: 2026-06-18 22:42
point: "P29 revision"
scope: paragraph
status: accepted
---

## Point 1 — P29 revision · scope: paragraph · mode: standard

**Original** (`articles/article-v40-2026-06-18-2212.md:75`)
> Il principio organizzativo centrale di Counselorbot è rappresentato dai passi guidati (*guided steps*), ossia sequenze predefinite che determinano l’ordine delle diverse fasi del dialogo. A ciascun passo è associato uno specifico meta-prompt, nel quale vengono definiti l’obiettivo della fase, le informazioni da prendere in considerazione e il tipo di risposta che il modello linguistico deve produrre. Questa struttura permette di affrontare sistematicamente tutti gli ambiti previsti dallo strumento selezionato, riducendo il rischio che alcune dimensioni vengano trascurate.

**Concetto unitario:**
> Il paragrafo introduce i passi guidati come principio organizzativo dell’interazione e ne chiarisce la funzione di controllo del dialogo.

**Diagnosi:**
- Il paragrafo è unitario: tutte le frasi sviluppano il concetto di passo guidato.
- L’argomento è chiaro, ma alcune formulazioni sono più pesanti del necessario.
- Il collegamento con il paragrafo precedente funziona: si passa dall’architettura modulare al principio operativo dei flussi.
- Terminologia: `passi guidati (*guided steps*)` e `meta-prompt` sono coerenti con la traccia permissiva. Non vanno italianizzati.

**Proposta**
> Il principio organizzativo centrale di Counselorbot è costituito dai passi guidati (*guided steps*): sequenze predefinite che regolano l’ordine delle diverse fasi del dialogo. A ciascun passo è associato un meta-prompt, nel quale sono specificati l’obiettivo della fase, le informazioni da considerare e il tipo di risposta attesa dal modello linguistico. L’organizzazione per passi consente di coprire in modo sistematico gli ambiti previsti dallo strumento selezionato e riduce il rischio che alcune dimensioni restino escluse dall’interazione.

**Modifiche:**
1. `è rappresentato dai passi guidati` → `è costituito dai passi guidati` [(formulazione più diretta e meno perifrastica)]
2. `ossia sequenze predefinite che determinano` → `: sequenze predefinite che regolano` [(definizione più scorrevole; mantiene il termine inglese tra parentesi)]
3. `vengono definiti... da prendere in considerazione... deve produrre` → `sono specificati... da considerare... attesa dal modello linguistico` [(riduce passivi e formulazioni lunghe)]
4. `Questa struttura permette... riducendo il rischio... vengano trascurate` → `L’organizzazione per passi consente... e riduce il rischio... restino escluse dall’interazione` [(anafora più esplicita e chiusura più precisa)]

**Δ**: chars -32 / words -2 · risk: low

**Norms respected**: registro accademico; frasi più lineari; anafora esplicita; anglicismi tecnici mantenuti secondo traccia terminologica.
**Possible exceptions**: `guided steps` e `meta-prompt` restano in inglese per coerenza tecnico-progettuale.

**A/R/M?** (indicare i numeri delle modifiche, es. "A 2,4" oppure "M 3: sostituire X con Y")

## Decisione

- 2026-06-18 22:43 — Accettate tutte le modifiche (`A`) e applicate a `articles/article-v40-2026-06-18-2212.md`.
