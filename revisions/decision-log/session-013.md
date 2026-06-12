# Sessione 013 — Revisione Globale (r-global): struttura, proporzioni, contenuto

- **Data:** 2026-06-10
- **Tool:** opencode
- **Tipo:** revision-global (r-global)
- **File:** articles/article-v2-2026-06-10-1935.md (bump da v1)

## Decisioni

### 1. Bump obbligatorio v1 → v2
- **Decisione:** accepted
- **Dettaglio:** Creata copia v2 prima di iniziare la revisione

### 2. P2.1 — Ridurre §1.1 (LLM e autovalutazione)
- **Decisione:** accepted con modifiche
- **Dettaglio:** Riscritto §1.1 da 5.871 a ~3.600 chars. Eliminate: ridondanze GenAI/LLM, dettaglio GPU/parametri, dibattito Bender («pappagalli stocastici»), Austin. Aggiunta: specifica «modelli ML», passaggio su istruibilità + recupero conoscenze contestuali. Correzione citazione Liu da «meno attrezzati» a «tra le meno utilizzate».

### 3. P2.3 — Ridurre §2 (Progettazione)
- **Decisione:** accepted
- **Dettaglio:** Riscritto §2 da 6.994 a ~4.300 chars basandosi sul codice reale del progetto counselorbot-sbs. Eliminati: nomi framework/librerie (Streamlit, FAISS, React, FastAPI, SQLAlchemy), cronologia quattro architetture. Aggiunta: descrizione AIService, calcolo nativo punteggi, knowledge base strategie, guided steps come nucleo ibrido. Tre sottosezioni (Obiettivi, Architettura, Flusso).

### 4. P2.2 — Transizione §1.1 → §1.2
- **Decisione:** accepted
- **Dettaglio:** Aggiunta frase ponte «Tra gli strumenti pensati per rilevare e sostenere queste strategie vi è il framework delle competenze strategiche.»

### 5. P3.2 — Scrivere §3.3 (Strumenti e metriche)
- **Decisione:** accepted
- **Dettaglio:** Sostituito placeholder `...` con descrizione dei 10 item Likert, calcolo medie per versione, dati demografici, domande aperte.

### 6. §4.2 — Aggiornare con tabella comparativa SBS vs ai4educ
- **Decisione:** accepted
- **Dettaglio:** Sostituito paragrafo descrittivo con tabella completa delle 10 dimensioni, medie SBS (n=6, escluso test) e ai4educ (n=16), delta e percentuali. Aggiunta nota cautelativa su campione esiguo.

### 7. P3.4 — Scrivere §4.3 (Autovalutazione pedagogica)
- **Decisione:** accepted
- **Dettaglio:** Analisi qualitativa delle 11 risposte aperte ai4educ. Quattro aree di criticità identificate (inserimento dati, coerenza memoria, completezza contesto, lunghezza risposte) con relative soluzioni SBS (form iniziale + upload PDF, miglioramento memoria di sessione, limite di token, Qwen 3.5 9B).

### 8. P2.4 — Scrivere §5 (Discussione)
- **Decisione:** accepted
- **Dettaglio:** Scritta discussione con: analisi miglioramenti SBS su 9/10 dimensioni, inquadramento ADDIE, limiti campionari, architettura ibrida, dialogo guidato come soluzione strutturale alla coerenza, assenza metriche oggettive.

### 9. P2.5 — Scrivere §6 (Conclusioni)
- **Decisione:** accepted
- **Dettaglio:** Scritte conclusioni con risposta esplicita alla domanda di ricerca dell'Introduzione. Precisazione che i test hanno riguardato il solo QSA; estensibilità ad altri strumenti (QSAr, ZTPI, Savickas, QPCS, QPCC, QAP).

### 10. P1.1 — Riformulare la tesi (Introduzione)
- **Decisione:** accepted
- **Dettaglio:** Sostituita frase esplorativa debole con tesi verificabile: «Questo lavoro presenta e valuta un assistente conversazionale... mostrando che un'architettura ibrida può sostenere l'auto-valutazione assistita in modo efficace e scalabile.» Specificato QSA come esempio di strumento.

### 11. P4.2 — Climax nei risultati
- **Decisione:** accepted
- **Dettaglio:** Aggiunta frase di apertura a §4.2 che dichiara il risultato principale prima della tabella.

### 12. P4.3 — Chiusura cerchio §6 → Introduzione
- **Decisione:** accepted
- **Dettaglio:** Aggiunta frase in apertura di §6 che risponde alla domanda dell'Introduzione («Sono mature per compiti riflessivi?»): «I risultati ottenuti indicano che i modelli conversazionali basati su LLM sono oggi maturi... a condizione che siano inseriti in un'architettura ibrida.»

### 13. P7.1-P7.2 — Abstract e keywords
- **Decisione:** accepted
- **Dettaglio:** Scritti abstract IT e EN (500-700 battute) e keywords IT+EN (7 parole chiave). Sostituiti placeholder.

### 14. P7.5 — Verifica voci bibliografiche e reinserimento
- **Decisione:** accepted
- **Dettaglio:** Delle 20 voci in bibliografia, 14 erano citate. Reinseriti 6 riferimenti per arrivare a 20 citazioni nel testo: Brown et al. (2020), Kuhail et al. (2022), Zawacki-Richter et al. (2019), Chen et al. (2021), Bender et al. (2021), Tankelevitch et al. (2024).

### 15. P3.1, P5.1, P5.2, P6.1-P6.3 — Proporzioni, ridondanze, terminologia
- **Decisione:** già risolti nelle fasi precedenti
- **Dettaglio:** Proporzioni passate da squilibrio §1 46.8%+§2 35.1% a §1 27.6%+§2 19.1%. Ridondanze e terminologia già consistenti.

## Riepilogo finale

| Metrica | Prima (v1) | Dopo (v2) |
|---|---|---|
| Caratteri totali | 25.098 | 30.037 |
| Sezioni placeholder | 6 (3.3, 4.1, 4.3, 5, 6, abstract) | 1 (§4.1 «da integrare») |
| Tesi | Implicita («esploriamo») | Esplicita e verificabile |
| §1 Contesto | 46.8% del corpo | 27.6% |
| §2 Progettazione | 35.1% del corpo | 19.1% |
| Citazioni in testo | 14 | 20 (tutte in bibliografia) |
| Dati utente | Descrizione narrativa | Tabella comparativa con medie |
| Limite 30.000 chars | Sotto di ~4.900 | Al limite (+37) |

**Posticipato:** conversione citazioni in note a piè di pagina (Roma TrE-PRESS), maiuscoletto autori, virgolette caporali.
