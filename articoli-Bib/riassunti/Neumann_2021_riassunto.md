# Riassunto — Neumann et al. (2021) "Chatbots as a Tool to Scale Mentoring Processes"

## Riferimento
Neumann, A. T., Arndt, T., Köbis, L., Meissner, R., Martin, A., de Lange, P., Pengel, N., Klamma, R., & Wollersheim, H.-W. (2021). Chatbots as a tool to scale mentoring processes: Individually supporting self-study in higher education. *Frontiers in Artificial Intelligence*, 4, 668220.

## Contesto e problema
Nelle discipline umanistiche e sociali, il curriculum include attività di lettura e scrittura che richiedono feedback tempestivo e di qualità. Il mentoring uno-a-uno è efficace ma non scalabile. In un corso di scienze dell'educazione per futuri insegnanti (circa 800 studenti per semestre) in un'università tedesca, gli studenti chiedevano più supporto nella gestione dei materiali di lettura.

## Soluzione proposta
Due chatbot sviluppati da un team interdisciplinare (informatici + pedagogisti):

**FeedBot** — Supporta la scrittura su letteratura seminariale:
- Propone compiti di scrittura sui testi del corso
- Usa T-MITOCAR (analisi linguistica computazionale) per generare feedback automatico
- Il feedback è visualizzato come grafo di conoscenza che confronta la struttura del testo dello studente con quella della letteratura di riferimento
- Integrato con FAQ su organizzazione del corso

**LitBot** — Supporta la lettura:
- Attiva le conoscenze pregresse prima della lettura
- Dopo la lettura, fornisce domande di riflessione
- Raccomanda materiali aggiuntivi basati sugli interessi dello studente
- Usa grafi di conoscenza annotati (RDF, triple store, SPARQL)

## Architettura tecnica
- Basato su **Social Bot Framework (SBF)**, strumento di modellazione collaborativa che permette la creazione di chatbot anche a utenti non tecnici
- Riconoscimento delle intenzioni tramite **Rasa** (NLU open source)
- Comunicazione via **Rocket.Chat**
- Backend su **las2peer** (peer-to-peer per servizi distribuiti)
- Deployment su cluster Kubernetes

## Valutazione
- Oltre 700 studenti hanno usato i chatbot in un anno
- **FeedBot**: valutato con System Usability Scale (SUS): punteggio medio 65,2 (n=96), considerato "marginale-alto"
- **LitBot**: valutazione qualitativa (n=13): 10 studenti su 13 hanno trovato il chatbot motivante per la lettura e utile per lo studio autonomo
- Criticità: risposte standardizzate e non personalizzate; necessità di più esercizi di riflessione

## Punti chiave per Counselorbot
- I chatbot **non sostituiscono** il mentoring umano ma lo **scalano**, rendendolo disponibile a più studenti
- L'approccio interdisciplinare (pedagogisti + informatici) è simile alla doppia anima di Counselorbot (strumenti psicometrici + AI conversazionale)
- Il feedback automatico su produzioni testuali degli studenti è concettualmente vicino alla chat guidata sui profili QSA
- I chatbot sono **task-oriented** (hanno uno scopo specifico: scrivere, leggere, riflettere) — come Counselorbot ha lo scopo di guidare l'esplorazione del profilo
