# Task di Revisione Globale — Counselorbot v2

Istruzioni: ogni punto viene affrontato uno alla volta in ordine. Per ogni punto: discutere, proporre modifica, A/R/M, passare al successivo.

---

## Lente 1 — Chiarezza della tesi

### Punto 1.1 — Riformulare la tesi come proposizione verificabile

La tesi attuale è implicita: «In questo lavoro esploriamo la questione con Counselorbot». Manca una dichiarazione esplicita di ciò che l'articolo sostiene.

**Azione:** sostituire l'ultima frase dell'Introduzione con una formulazione che dica cosa l'articolo mostra/dimostra, non solo cosa esplora.

---

## Lente 2 — Architettura argomentativa

### Punto 2.1 — Ridurre §1.1 (LLM e autovalutazione)

§1.1 è al 29.5% del corpo (5.871 chars). Contiene digressioni non funzionali all'argomento centrale (Austin, Bender/pappagalli stocastici, dibattito sulla comprensione dei LLM).

**Azione:** tagliare le digressioni non direttamente collegate all'uso di LLM per autovalutazione delle competenze. Mantenere solo: evoluzione chatbot, LLM come strumento educativo, self-assessment assistito da AI.

**STATO: FATTO** — Riscritto in versione snella (~3.600 chars). Eliminati: ridondanze GenAI/LLM, dettaglio GPU/parametri, Austin, dibattito Bender, ultima frase gap. Aggiunto: specifica «modelli ML», passaggio su istruibilità + recupero conoscenze.

### Punto 2.2 — Aggiungere transizione §1.1 → §1.2

Manca un ponte logico tra la trattazione generale dei LLM in educazione (§1.1) e il framework delle competenze strategiche (§1.2).

**Azione:** aggiungere una frase di chiusura a §1.1 (o apertura di §1.2) che colleghi i due temi, es: «Tra gli strumenti di autovalutazione che la GenAI può accompagnare, il framework delle competenze strategiche...»

**STATO: FATTO** — Aggiunta frase ponte «Tra gli strumenti pensati per rilevare e sostenere queste strategie vi è il framework delle competenze strategiche.» + corretta citazione Liu (da «meno attrezzati» a «tra le meno utilizzate»).

### Punto 2.3 — Ridurre §2 (Progettazione)

§2 è al 35.1% del corpo (6.994 chars). Contiene dettaglio tecnico eccessivo per una rivista di pedagogia: elenca provider AI, librerie (Streamlit, FAISS, SQLAlchemy), endpoint, servizi Python.

**Azione:** condensare i dettagli implementativi; spostare la descrizione delle quattro architetture in appendice o nota. Mantenere la logica di design (perché certe scelte) non gli aspetti tecnici (come sono implementate).

**STATO: FATTO** — Riscritta §2 sulla base del codice reale del progetto counselor-sbs. Eliminati: nomi framework/librerie/file, cronologia quattro architetture. Aggiunta: descrizione AIService, calcolo nativo punteggi, knowledge base strategie, guided steps come nucleo ibrido.

### Punto 2.4 — Scrivere §5 (Discussione)

§5 è vuoto (24 chars, segnaposto `...`).

**Azione:** scrivere la discussione interpretando i risultati di §4.2: confronto SBS vs ai4educ, limiti del campione (n=34, non probabilistico), implicazioni per il self-assessment assistito, generalizzabilità.

**STATO: FATTO** — Scritta §5 con: analisi miglioramenti SBS, inquadramento ADDIE, limiti campionari, architettura ibrida, assenza metriche oggettive.

### Punto 2.5 — Scrivere §6 (Conclusioni)

§6 è vuoto (25 chars, segnaposto `...`).

**Azione:** scrivere le conclusioni: sintesi del contributo, risposta alla domanda di ricerca dell'Introduzione, direzioni future (validazione su campione più ampio, integrazione con piattaforma, studi longitudinali).

**STATO: FATTO** — Scritte §6 con: sintesi contributo, test solo su QSA, estensibilità ad altri strumenti, integrazione piattaforma.

---

## Lente 3 — Proporzionalità delle sezioni

### Punto 3.1 — Riequilibrare le proporzioni

Target suggerito per il corpo (esclusa bibliografia, ~20.000 chars totali):

| Sezione | Target chars | Target % | Azione |
|---|---|---|---|
| Introduzione | 2.000-3.000 | 10-15% | Espandere leggermente |
| §1 Contesto | 3.000-4.000 | 15-20% | **Tagliare** 5.000+ chars |
| §2 Progettazione | 3.000-4.000 | 15-20% | **Tagliare** 3.000+ chars |
| §3 Metodologia | 3.000-4.000 | 15-20% | **Scrivere** §3.3 |
| §4 Risultati | 4.000-5.000 | 20-25% | **Scrivere** §4.1 e §4.3 |
| §5 Discussione | 4.000-5.000 | 20-25% | **Scrivere** da zero |
| §6 Conclusioni | 1.000-2.000 | 5-10% | **Scrivere** da zero |

**Azione:** attuare i tagli indicati nei punti 2.1 e 2.3, poi distribuire il budget sui sei vani.

### Punto 3.2 — Scrivere §3.3 (Strumenti e metriche)

§3.3 è placeholder `...`.

**Azione:** descrivere le metriche di valutazione (scale Likert, analisi statistica prevista, eventuali indici di affidabilità).

**STATO: FATTO** — Scritto §3.3 con descrizione dei 10 item Likert, calcolo medie per versione, dati demografici, domande aperte analisi qualitativa.

### Punto 3.3 — Scrivere §4.1 (Risultati tecnici)

§4.1 è placeholder `...`.

**Azione:** riportare metriche tecniche (tempi di risposta, tasso di completamento del dialogo, eventuali dati di sistema).

**STATO: DA INTEGRARE** — Dati tecnici non disponibili nei sistemi attivi.

### §4.2 Esperienza utente

**STATO: FATTO** — Aggiornata con tabella comparativa SBS vs ai4educ completa di medie e delta. Aggiunta nota cautelativa su campione esiguo.

### Punto 3.4 — Scrivere §4.3 (Autovalutazione pedagogica)

§4.3 è placeholder `...`.

**Azione:** analisi qualitativa delle risposte aperte (11 partecipanti hanno fornito feedback), eventuale categorizzazione dei suggerimenti.

**STATO: FATTO** — Analisi qualitativa delle 11 risposte aperte. Categorizzate 4 criticità (inserimento dati, coerenza memoria, completezza contesto, lunghezza risposte) con relative soluzioni SBS. Menzionato Qwen 3.5 9B.

---

## Lente 4 — Arco narrativo

### Punto 4.1 — Anticipare la tesi nell'apertura

L'Introduzione pone domande ma non dichiara subito la posizione dell'articolo.

**Azione:** aggiungere una frase nella prima parte dell'Introduzione che indichi la direzione della risposta. Coperto dal Punto 1.1.

### Punto 4.2 — Creare climax nei risultati

§4.2 elenca medie senza evidenziare il risultato principale.

**Azione:** aprire §4 con una frase che dichiari il risultato chiave (es. «I partecipanti alla versione SBS hanno valutato positivamente... con una media di 4.29 su 5 per pertinenza») prima di entrare nei dettagli.

### Punto 4.3 — Chiudere il cerchio nelle conclusioni

§6 deve tornare alla domanda dell'Introduzione: «Sono mature per compiti riflessivi?»

**Azione:** nella scrittura di §6, rispondere esplicitamente alla domanda posta in Introduzione.

---

## Lente 5 — Ridondanza

### Punto 5.1 — Consolidare definizioni di GenAI/LLM

GenAI è definita in §1.1 par.1 e ridefinita in par.2; LLM è definito in par.2, par.3 e par.4.

**Azione:** mantenere una sola definizione per GenAI e una per LLM, rimuovere le ripetizioni.

### Punto 5.2 — Eliminare la triplice enunciazione della gap

La mancanza di accompagnamento dialogico è espressa in §1.1 (ultima frase), §1.3 (par.1) e §1.3 (par.2).

**Azione:** mantenere la gap solo in §1.3, rimuovere l'ultima frase di §1.1 che la anticipa.

---

## Lente 6 — Coerenza terminologica

### Punto 6.1 — Scegliere un unico termine per l'oggetto

«Chatbot conversazionale», «assistente conversazionale», «LLM» sono usati intercambiabilmente per riferirsi a Counselorbot in §1.1-1.3.

**Azione:** usare «assistente conversazionale» (o «chatbot») coerentemente per tutto l'articolo.

### Punto 6.2 — Scegliere auto-valutazione o self-assessment

I due termini sono alternati.

**Azione:** usare «auto-valutazione» (italiano) per tutto l'articolo, data la rivista italiana. Riservare *self-assessment* solo al primo uso come gloss.

### Punto 6.3 — Normalizzare GenAI / AI generativa

**Azione:** dopo la prima definizione, usare sempre «GenAI».

---

## Lente 7 — Allineamento alle norme editoriali

### Punto 7.1 — Scrivere abstract IT + EN (500-700 battute ciascuno)

Attuale: `...` placeholder.

**Azione:** scrivere abstract italiano e inglese, 500-700 battute ciascuno.

### Punto 7.2 — Scrivere keywords IT + EN

**Azione:** 3-7 parole chiave in italiano e inglese.

### Punto 7.3 — Convertire il sistema citazionale da APA inline a note a piè di pagina

Le norme Roma TrE-PRESS richiedono: `I. COGNOME (maiuscoletto), *Titolo in corsivo*, Editore, Luogo anno.` in nota a piè di pagina.

**Azione:** ogni citazione inline `(Autore anno)` va convertita in nota. Ristrutturare l'intera bibliografia.

**STATO: POSTICIPATO** — L'articolo ha raggiunto il limite di 30.000 chars. La conversione in note richiederebbe spazio aggiuntivo. Da fare in una sessione successiva.

### Punto 7.4 — Applicare maiuscoletto agli autori nelle citazioni

**Azione:** formattare i cognomi in maiuscoletto in tutte le note bibliografiche.

**STATO: POSTICIPATO** — Da fare insieme alla conversione in note (P7.3).

### Punto 7.5 — Verificare che ogni voce della bibliografia sia citata nel testo

Kuhail et al. 2022 e Zawacki-Richter et al. 2019 sono in bibliografia ma non compaiono nel testo corrente.

**Azione:** o citarli nel testo o rimuoverli dalla bibliografia.

**STATO: FATTO** — Reinseriti 6 riferimenti (Brown, Kuhail, Zawacki-Richter, Chen, Bender, Tankelevitch) per allineare 20 citazioni nel testo alle 20 voci in bibliografia.

### Punto 7.6 — Sostituire le virgolette con caporali dove necessario

**Azione:** usare `« »` per citazioni e titoli di saggi, `' '` per enfasi, `" "` solo dentro caporali.

**STATO: POSTICIPATO** — Da fare insieme alla conversione in note (P7.3).

---

## Riepilogo

| Lente | Punti | Priorità |
|---|---|---|
| 1. Tesi | 1 | Media |
| 2. Architettura | 5 | Alta |
| 3. Proporzioni | 4 | Alta |
| 4. Arco narrativo | 3 | Media |
| 5. Ridondanza | 2 | Media |
| 6. Terminologia | 3 | Bassa |
| 7. Norme | 6 | Bloccante |
| **Totale** | **24** | |

**Budget chars:** corpo attuale 19.922, limite 30.000. La bibliografia occupa 5.176 chars. Budget residuo per nuove sezioni: ~4.902 chars. I tagli da §1.1 e §2 libereranno spazio aggiuntivo.
