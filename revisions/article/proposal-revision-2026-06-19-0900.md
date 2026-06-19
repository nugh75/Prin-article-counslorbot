---
article: articles/article-v40-2026-06-18-2212.md
version: v40-2026-06-18-2212
timestamp: 2026-06-19 09:00
point: "§3.1 P1 — scissione e compressione"
scope: paragrafo
status: proposed
---

# Proposta §3.1 P1 — scissione e compressione

## Testo originale (`articles/article-v40-2026-06-18-2212.md:133`)

Per valutare il sistema descritto nel § 2 è stato adottato un disegno di ricerca articolato secondo il modello ADDIE (Branch, 2009). L'acronimo identifica cinque fasi iterative: *Analysis*, relativa all'analisi dei bisogni formativi e del contesto; *Design*, dedicata alla progettazione dell'architettura e delle modalità di interazione; *Development*, riguardante la realizzazione del sistema; *Implementation*, riferita al rilascio e all'utilizzo del sistema; ed *Evaluation*, finalizzata alla valutazione del suo funzionamento e dei risultati ottenuti. Il lavoro presentato in questo articolo si colloca nella fase di *Evaluation* del secondo ciclo di sviluppo. Il primo ciclo ha portato alla realizzazione di CB-C, una versione basata su un'architettura RAG (*Retrieval-Augmented Generation*) e su un *system prompt*. In tale configurazione, il modello linguistico rispondeva alle domande dello studente recuperando le informazioni pertinenti da documenti indicizzati in una memoria vettoriale, senza seguire una sequenza di interazione prestabilita. I risultati del primo ciclo, discussi nel § 4, hanno evidenziato alcune criticità, in particolare nella coerenza delle analisi prodotte e nelle modalità di inserimento manuale dei dati. Tali risultati hanno orientato un successivo processo di ottimizzazione e la progettazione di una nuova versione del sistema. Il secondo ciclo ha quindi condotto allo sviluppo di CB-SBS, che introduce una procedura guidata per passi, un grafo della conoscenza, l'indicizzazione semantica delle strategie e un'interfaccia ottimizzata per l'inserimento e la visualizzazione dei profili. In particolare, l'inserimento manuale dei punteggi — segnalato come critico nella prima fase — è stato sostituito da un form iniziale e dal caricamento diretto dei PDF degli esiti; la memoria di sessione è stata rivista tramite sintesi dinamica del dialogo e iniezione costante dei punteggi a ogni turno; ed è stato introdotto un limite di token per contenere l'estensione degli interventi del LLM. La valutazione presentata in questo studio adotta un disegno comparativo *between-subjects* tra le due versioni, CB-C e CB-SBS. Ciascun partecipante ha utilizzato una sola versione di Counselorbot e, al termine dell'interazione, ha compilato il questionario di gradimento descritto nel § 3.3.

## Testo proposto

**[P1a — ADDIE e collocazione]**
Per valutare il sistema descritto nel §2 è stato adottato un disegno di ricerca articolato secondo il modello ADDIE (Branch, 2009), che identifica cinque fasi iterative: *Analysis*, relativa all'analisi dei bisogni formativi e del contesto; *Design*, dedicata alla progettazione dell'architettura e delle modalità di interazione; *Development*, riguardante la realizzazione del sistema; *Implementation*, riferita al rilascio e all'utilizzo; ed *Evaluation*, finalizzata alla valutazione del funzionamento e dei risultati. Il lavoro si colloca nella fase di *Evaluation* del secondo ciclo di sviluppo.

**[P1b — CB-C e criticità del primo ciclo]**
Il primo ciclo ha portato alla realizzazione di CB-C, una versione basata su un'architettura RAG (*Retrieval-Augmented Generation*) e su un *system prompt*, in cui il modello linguistico rispondeva alle domande dello studente recuperando informazioni pertinenti da documenti indicizzati in una memoria vettoriale, senza sequenza di interazione prestabilita. I risultati, discussi nel §4, hanno evidenziato alcune criticità — in particolare nella coerenza delle analisi e nell'inserimento manuale dei dati — orientando la progettazione di una nuova versione del sistema.

**[P1c — CB-SBS e disegno comparativo]**
Il secondo ciclo ha condotto allo sviluppo di CB-SBS, che introduce una procedura guidata per passi, un grafo della conoscenza, l'indicizzazione semantica delle strategie e un'interfaccia ottimizzata per l'inserimento e la visualizzazione dei profili. In particolare, l'inserimento manuale dei punteggi è stato sostituito da un form iniziale e dal caricamento diretto dei PDF degli esiti; la memoria di sessione è stata rivista tramite sintesi dinamica del dialogo e iniezione costante dei punteggi a ogni turno; ed è stato introdotto un limite di token per contenere l'estensione degli interventi del LLM. La valutazione adotta un disegno comparativo *between-subjects* tra le due versioni: ciascun partecipante ha utilizzato una sola versione e, al termine dell'interazione, ha compilato il questionario di gradimento descritto nel §3.3.

## Modifiche numerate

1. **Scissione** in 3 paragrafi (P1a: ADDIE+collocazione; P1b: CB-C+criticità; P1c: CB-SBS+disegno) — 4 idee autonome in un unico paragrafo; scissione rende il filo argomentativo trasparente
2. `...modello ADDIE (Branch, 2009). L'acronimo identifica` → `...modello ADDIE (Branch, 2009), che identifica` — anafora "L'acronimo" eliminata; relativa integra il periodo
3. `riferita al rilascio e all'utilizzo del sistema` → `riferita al rilascio e all'utilizzo` — "del sistema" ridondante
4. `finalizzata alla valutazione del suo funzionamento e dei risultati ottenuti` → `finalizzata alla valutazione del funzionamento e dei risultati` — "del suo" e "ottenuti" impliciti nel contesto
5. `Il lavoro presentato in questo articolo si colloca` → `Il lavoro si colloca` — "presentato in questo articolo" ridondante
6. `...e su un *system prompt*. In tale configurazione, il modello linguistico rispondeva...` → `...e su un *system prompt*, in cui il modello linguistico rispondeva...` — fusione frase; anafora "In tale configurazione" eliminata
7. `senza seguire una sequenza di interazione prestabilita` → `senza sequenza di interazione prestabilita` — compressione sintattica
8. `I risultati del primo ciclo, discussi nel § 4` → `I risultati, discussi nel §4` — "del primo ciclo" ridondante nel paragrafo P1b
9. `Tali risultati hanno orientato un successivo processo di ottimizzazione e la progettazione di una nuova versione del sistema` → `orientando la progettazione di una nuova versione del sistema` — "processo di ottimizzazione" vago; compressione coordinata con gerundio
10. `segnalato come critico nella prima fase —` → rimosso — già detto in P1b
11. `Il secondo ciclo ha quindi condotto` → `Il secondo ciclo ha condotto` — "quindi" ridondante dopo pausa paragrafo
12. `La valutazione presentata in questo studio adotta` → `La valutazione adotta` — "presentata in questo studio" ridondante
13. `tra le due versioni, CB-C e CB-SBS. Ciascun partecipante ha utilizzato una sola versione di Counselorbot e,` → `tra le due versioni: ciascun partecipante ha utilizzato una sola versione e,` — fusione con due punti; "CB-C e CB-SBS" ridondante (già nominati nella frase); "di Counselorbot" ridondante
