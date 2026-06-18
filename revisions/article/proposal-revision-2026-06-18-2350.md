---
article: articles/article-v40-2026-06-18-2212.md
version: v40-2026-06-18-2212
timestamp: 2026-06-18-2350
point: §2.5 — scissione cinque paragrafi + compressioni
scope: paragraph
status: proposed
---

# Proposta — §2.5 Struttura del sistema

## Testo originale (riga 119)

> L'architettura applicativa di Counselorbot si articola in quattro componenti principali: frontend, backend, database e livello di astrazione dei modelli linguistici. Il frontend costituisce il livello con cui l'utente interagisce direttamente. Comprende il selettore degli strumenti, i moduli per l'inserimento dei risultati, il caricamento dei documenti, la visualizzazione grafica del profilo, l'interfaccia conversazionale, la navigazione tra i passi guidati e le funzioni di salvataggio delle strategie. La sua organizzazione modulare permette di associare a ciascuno strumento una specifica interfaccia, mantenendo al tempo stesso un'esperienza d'uso coerente all'interno della piattaforma. Il backend gestisce la logica applicativa e coordina le differenti componenti del sistema. Esso espone i servizi relativi alla chat, ai questionari, ai passi guidati, alla memoria, alla base di conoscenza e alle funzioni amministrative. Durante l'interazione, il backend individua il passo corrente, seleziona il meta-prompt corrispondente, recupera le informazioni pertinenti e costruisce il contesto da inviare al modello linguistico. Successivamente riceve la risposta generata, la restituisce all'interfaccia e aggiorna la memoria della sessione. Il database relazionale conserva le configurazioni necessarie al funzionamento della piattaforma. Al suo interno sono registrati gli strumenti disponibili, la struttura dei questionari, i fattori, gli item, le scale, le stanine, i prompt, i meta-prompt, i passi guidati, le strategie, le configurazioni dei modelli, la memoria delle sessioni e le interazioni archiviate. Counselorbot non si limita quindi a ricevere punteggi esterni, ma dispone di una rappresentazione strutturata dei questionari e può interpretarli in relazione alle loro caratteristiche. Il livello di astrazione dei modelli linguistici mette infine in comunicazione il backend con i diversi provider di intelligenza artificiale. Attraverso un'interfaccia comune, esso gestisce l'invio dei prompt, la ricezione delle risposte e i parametri di generazione. Questa componente rende Counselorbot indipendente dal singolo modello e consente di utilizzare sia modelli eseguiti localmente mediante Ollama sia eventuali servizi remoti. L'organizzazione complessiva separa dunque i contenuti educativi, la logica dei percorsi, l'interfaccia utente e il modello linguistico. Tale separazione permette di aggiornare ed estendere Counselorbot intervenendo sulle singole componenti, senza dover riprogettare l'intero sistema.

## Testo proposto

L'architettura applicativa di Counselorbot si articola in quattro componenti principali: frontend, backend, database e livello di astrazione dei modelli linguistici.

Il frontend costituisce il livello con cui l'utente interagisce direttamente: comprende il selettore degli strumenti, i moduli per l'inserimento dei risultati, il caricamento dei documenti, la visualizzazione grafica del profilo, l'interfaccia conversazionale, la navigazione tra i passi guidati e le funzioni di salvataggio delle strategie. La sua organizzazione modulare permette di associare a ciascuno strumento una specifica interfaccia, mantenendo al tempo stesso un'esperienza d'uso coerente all'interno della piattaforma.

Il backend gestisce la logica applicativa e coordina le diverse componenti del sistema. Espone i servizi relativi alla chat, ai questionari, ai passi guidati, alla memoria, alla base di conoscenza e alle funzioni amministrative. Durante l'interazione, individua il passo corrente, seleziona il meta-prompt corrispondente, recupera le informazioni pertinenti e costruisce il contesto da inviare al modello linguistico; riceve quindi la risposta generata, la restituisce all'interfaccia e aggiorna la memoria della sessione.

Il database relazionale conserva le configurazioni necessarie al funzionamento della piattaforma: gli strumenti disponibili, la struttura dei questionari, i fattori, gli item, le scale, le stanine, i prompt, i meta-prompt, i passi guidati, le strategie, le configurazioni dei modelli, la memoria delle sessioni e le interazioni archiviate. Counselorbot non si limita pertanto a ricevere punteggi esterni, ma dispone di una rappresentazione strutturata dei questionari e può interpretarli in relazione alle loro caratteristiche.

Il livello di astrazione dei modelli linguistici mette infine in comunicazione il backend con i diversi provider di intelligenza artificiale: attraverso un'interfaccia comune gestisce l'invio dei prompt, la ricezione delle risposte e i parametri di generazione, rendendo Counselorbot indipendente dal singolo modello e consentendo di utilizzare sia modelli eseguiti localmente mediante Ollama sia eventuali servizi remoti. L'organizzazione complessiva separa dunque i contenuti educativi, la logica dei percorsi, l'interfaccia utente e il modello linguistico, permettendo di aggiornare ed estendere Counselorbot intervenendo sulle singole componenti senza riprogettare l'intero sistema.

## Modifiche numerate

1. Scissione in 5 paragrafi (intro + 4 componenti)
2. Frontend: "costituisce…. Comprende" → frase unica con due punti
3. `le differenti componenti` → `le diverse componenti`
4. `Esso espone` → `Espone` (soggetto condiviso col periodo precedente)
5. Fusione "Successivamente riceve…" tramite `;` + `quindi`
6. `Al suo interno sono registrati…` → due punti dopo `piattaforma:`
7. `non si limita quindi` → `non si limita pertanto`
8. Fusione "Attraverso un'interfaccia comune…" + "Questa componente rende…"
9. "Tale separazione permette…" integrata in "L'organizzazione complessiva…"
