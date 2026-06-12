# Counselorbot: un chatbot per l'orientamento

**Abstract** (italiano)

L'articolo presenta Counselorbot, un assistente conversazionale basato su LLM per l'autovalutazione guidata delle competenze strategiche degli studenti. Dopo aver inquadrato il ruolo dei Large Language Model nell'evoluzione dei chatbot educativi e il framework delle competenze strategiche (QSA), il lavoro descrive l'architettura ibrida del sistema — che combina passi guidati deterministici con la flessibilità di un LLM — e il relativo flusso di interazione. La valutazione, condotta su 34 partecipanti confrontando due versioni del sistema (SBS e ai4educ), mostra miglioramenti in 9 dimensioni su 10, con incrementi evidenti in facilità d'uso (Δ = +0,79) e fiducia (Δ = +0,65). Il lavoro si colloca nella fase di test del modello ADDIE (Analysis, Design, Development, Implementation, Evaluation) e discute limiti e direzioni di sviluppo futuro.

**Abstract** (inglese)

This paper presents Counselorbot, an LLM-based conversational assistant for guided self-assessment of students' strategic competences. After framing the role of Large Language Models in the evolution of educational chatbots and the strategic competences framework (QSA), the hybrid architecture — combining deterministic guided steps with LLM flexibility — and the interaction flow are described. The evaluation, carried out on 34 participants comparing two system versions (SBS and ai4educ), shows improvements in 9 out of 10 dimensions, with marked increases in ease of use (Δ = +0.79) and trust (Δ = +0.65). The study is positioned within the test phase of the ADDIE model and discusses limitations and future development directions.

**Parole chiave:** autovalutazione; competenze strategiche; LLM; chatbot educativo; QSA; intelligenza artificiale generativa; ADDIE
**Keywords:** self-assessment; strategic competences; LLM; educational chatbot; QSA; generative AI; ADDIE

## Introduzione

Tra gli strumenti che si utilizzano nell'orientamento scolastico e professionale ci sono questionari di autovalutazione in  diversi domini: cognitivo, affettivo, strategie di apprendimento. Questi strumenti restituisco delle risposte pre impostate che coprono profili generali e non sono specifiche per lo studente. L'interpretazione di queste risposte (profili, scale ecc...) è tradizionalmente affidata al tutor, al docente o all'orientatore, ma questo accompagnamento dialogico è difficilmente scalabile. I recenti modelli conversazionali basati su LLM aprono la possibilità di integrare questa funzione. Tali modelli sono però maturi per compiti riflessivi come l'autovalutazione delle competenze strategiche, e sostenibili sul piano economico? Questo lavoro presenta e valuta un assistente conversazionale, Counselorbot, in grado di accompagnare lo studente nella riflessione sul proprio profilo emerso da strumenti di autovalutazione — come il Questionario sulle Strategie di Apprendimento (QSA). I risultati mostrano che un'architettura ibrida, che combina passi guidati deterministici con la flessibilità di un LLM, può sostenere l'autovalutazione assistita in modo efficace e scalabile.

Dopo aver inquadrato il contesto teorico e i lavori correlati (§1), l'articolo descrive la progettazione e l'architettura di Counselorbot (§2). La metodologia di valutazione adottata è illustrata nel §3, i cui risultati sono presentati nel §4. Il §5 discute le implicazioni dei risultati emersi, mentre il §6 conclude tracciando le direzioni di sviluppo futuro.

## 1. Contesto e lavori correlati

### 1.1 LLM e autovalutazione in educazione

L'intelligenza artificiale generativa (GenAI) comprende modelli in grado di produrre contenuti originali a partire da pattern appresi su grandi quantità di dati. I modelli specializzati nel linguaggio — *Large Language Model* (LLM) — rappresentano l'ultima fase dell'evoluzione dei chatbot: sistemi che interagiscono in linguaggio naturale, mantengono coerenza contestuale e generano risposte pertinenti allo scopo dell'interazione. Addestrati su grandi corpora testuali tramite reti neurali, gli LLM sono modelli di machine learning che producono risposte originali e adattive. A differenza dei chatbot *rule-based* (ELIZA, Weizenbaum 1966) e di quelli ML tradizionali basati su alberi decisionali o *Natural Language Understanding* (NLU), rendono possibile ciò che le architetture rigide precedenti non consentivano (Brown et al. 2020; Kasneci et al. 2023).

In ambito educativo, i chatbot hanno trovato impiego fin dagli anni Settanta nei primi sistemi di tutoring intelligente (Self 1974). Le rassegne sistematiche sull'AI in educazione segnalano nell'accompagnamento tutoriale uno degli spazi meno coperti (Kuhail et al. 2022; Wollny et al. 2021; Zawacki-Richter et al. 2019). I sistemi basati su regole o NLU hanno tentato di colmare questa lacuna (Su et al. 2020; Mendez et al. 2020; D'Silva et al. 2020), ma la loro architettura rigida li rendeva inadatti a contesti aperti che richiedono dialogo esteso e riflessione guidata.

Gli LLM, per la loro flessibilità, cambiano questo quadro. Possono essere istruiti con direttive specifiche — i *system prompt* — che ne vincolano il comportamento a un ruolo e a uno scopo, e sono in grado di generare linguaggio naturale coerente anche in risposta a input imprevisti, cosa che i sistemi rule-based non potevano gestire. A questa istruibilità si aggiunge la possibilità di richiamare conoscenze o indicazioni specifiche per la situazione — strategie approvate, dati del profilo dello studente, frammenti di letteratura — rendendo il dialogo adattivo al contesto. È questa combinazione che permette di costruire un assistente conversazionale in grado di sostenere un dialogo guidato con lo studente, accompagnandolo in un percorso di autovalutazione supportato da conoscenze pertinenti e adattato alle sue risposte. Modelli come Codex (Chen et al. 2021) mostrano come un LLM possa tradurre richieste in linguaggio naturale in operazioni eseguibili, prefigurando sistemi in grado di agire autonomamente su obiettivi.

Gli LLM presentano tuttavia limiti noti — allucinazioni, errori fattuali, bias — che richiedono un'attenta progettazione dell'interazione affinché l'affidabilità del dialogo educativo non sia compromessa da questi fenomeni (Bender et al. 2021).

I chatbot possono rendere scalabili processi di accompagnamento altrimenti non sostenibili (Neumann et al. 2021) e, impiegati come tutor socratici — modello dialogico in cui l'AI guida lo studente alla scoperta attraverso domande, non risposte dirette — sostenere lo sviluppo metacognitivo e l'*agency* epistemica, ossia la concezione secondo cui lo studente è agente attivo nella costruzione della propria conoscenza (Antunes et al. 2025). Perché ciò avvenga, il dialogo va progettato attorno a principi di autoregolazione (Chang et al. 2023): le strategie di autovalutazione supportate dall'AI risultano infatti tra le meno utilizzate dagli studenti (Liu et al. 2025), e la consapevolezza metacognitiva richiesta per interagire con la GenAI è essa stessa un'abilità da sostenere (Tankelevitch et al. 2024). Tra gli strumenti pensati per rilevare e sostenere queste strategie vi è il framework delle competenze strategiche.

### 1.2 Il framework delle competenze strategiche

Il costrutto di *competenza strategica* designa l'insieme delle abilità cognitive, metacognitive, affettivo-motivazionali e volitive che uno studente attiva per dirigere il proprio apprendimento. Con questo termine si intende la capacità del soggetto di pianificare, monitorare e regolare il proprio studio, riconoscendo e mobilitando le risorse personali a disposizione. Il framework è stato sviluppato nell'ambito delle ricerche del Centro Nazionale Opere Salesiane – Formazione Aggiornamento Professionale (CNOS-FAP) e del gruppo di lavoro coordinato da Pellerey, i cui risultati confluiscono nella piattaforma competenzestrategiche.it.

Il costrutto è esplorato attraverso il Questionario sulle Strategie di Apprendimento (QSA), che indaga due aree complementari: quella cognitiva (strategie elaborative, autoregolazione, organizzazione semantica, autointerrogazione) e quella affettivo-motivazionale (volizione, percezione di competenza, ansietà di base, attribuzioni causali). Gli esiti sono restituiti come profilo riflessivo, con indicazioni calibrate sulla direzione interpretativa di ciascun ambito. Una forma ridotta del QSA (QSAr) è disponibile per i contesti in cui la versione integrale non è praticabile.

La piattaforma competenzestrategiche.it consente la compilazione online del QSA e restituisce il profilo, ma senza una componente conversazionale: il profilo viene presentato allo studente senza accompagnamento dialogico.

Al QSA si affiancano altri strumenti per l'orientamento: lo Zimbardo Time Perspective Inventory (ZTPI), che rileva la percezione del tempo lungo cinque prospettive (passato negativo, passato positivo, presente edonistico, presente fatalistico e futuro), e l'intervista di Savickas (Savickas 2018), un protocollo qualitativo a cinque domande da cui il soggetto ricava una sintesi narrativa del proprio percorso.

### 1.3 Posizionamento del lavoro

L'analisi della letteratura e degli strumenti esistenti evidenzia uno scarto. Da un lato, i sistemi basati su LLM per il dialogo in contesti educativi sono ancora prevalentemente orientati al supporto emotivo o al tutoring disciplinare; alcuni lavori mostrano come un LLM possa tradurre dati e modelli predittivi in feedback prescrittivo leggibile e azionabile per lo studente (Susnjak 2023), ma raramente in connessione con strumenti strutturati di autovalutazione. Dall'altro, gli strumenti di autovalutazione delle competenze strategiche — come il QSA — restituiscono un profilo senza offrire un accompagnamento dialogico che aiuti lo studente a interpretarlo e a tradurlo in azioni concrete. A ciò si aggiunge un nodo di accettazione: a parità di contenuto, le indicazioni attribuite a un'intelligenza artificiale tendono a essere percepite come meno credibili (Cukurova et al. 2020), il che rende cruciale un impianto *human-centered* in cui l'AI accompagna il giudizio senza sostituirlo.

Counselorbot si inserisce in questa lacuna: indipendentemente dallo strumento adottato — questionari come il QSA, interviste come quella di Savickas o altri strumenti integrabili — esso costruisce, a partire dagli esiti, un percorso di autovalutazione guidata in cui il profilo non è solo visualizzato ma discusso ambito per ambito con un assistente conversazionale, che aiuta lo studente a interpretare gli esiti, ne mette in luce le connessioni e suggerisce strategie. L'attenzione di questo lavoro è rivolta all'interazione pedagogica costruita a partire dagli esiti, non alle caratteristiche tecniche dei singoli strumenti.

## 2. Progettazione di Counselorbot

### 2.1 Obiettivi di design e requisiti

Il sistema è progettato per guidare uno studente attraverso un percorso di autovalutazione e riflessione sulle proprie competenze strategiche, senza sostituirsi a un counselor umano ma offrendo uno spazio di dialogo strutturato, secondo una logica di intelligenza ibrida, in cui la flessibilità dell'LLM è guidata da un piano pedagogico predefinito (Puech et al. 2025). I requisiti di design sono:

- **Multi-strumento ed estensibile**: supporto per diversi strumenti di autovalutazione (QSA, QSAr, ZTPI, intervista Savickas, Questionario sulla Percezione delle proprie Competenze Strategiche [QPCS], Questionario di Percezione delle proprie Competenze e Convinzioni [QPCC], Questionario di Adattabilità Professionale [QAP]), ciascuno con la propria logica di calcolo e modalità di interazione, e possibilità di integrarne altri.
- **Chat guidata**: la conversazione segue una sequenza di passi predefiniti ma adattivi, in cui il sistema presenta un fattore per volta, facilita la riflessione e suggerisce strategie.
- **Configurabilità da pannello amministrativo**: prompt, sequenze e messaggi sono memorizzati nel database e modificabili senza intervento sul codice.
- **Flessibilità del provider AI**: supporto per molteplici provider (remoti e locali) intercambiabili senza modifiche al sistema.
- **Base di conoscenza condivisa**: strategie approvate dagli amministratori sono conservate in un archivio e iniettate nel contesto del LLM quando pertinenti.
- **Multilingua**: interfaccia in sei lingue (italiano, inglese, spagnolo, francese, tedesco, svedese).

### 2.2 Architettura

L'architettura di Counselorbot si fonda su tre componenti. Un **backend** espone i servizi di chat, amministrazione, gestione dei questionari e memoria di sessione; un livello di astrazione verso i provider AI rende il sistema agnostico rispetto al modello linguistico sottostante, permettendo di commutare tra provider remoti e locali a caldo. Un **frontend** modulare offre all'utente un selettore di strumenti, un modulo di inserimento punteggi, una visualizzazione del profilo e l'interfaccia di chat guidata. Un **database relazionale** conserva le configurazioni (prompt, passi guidati, strategie) e la memoria di sessione.

Il sistema integra nativamente la logica di calcolo di molteplici questionari: non si limita a ricevere punteggi esterni, ma conosce la struttura di ciascuno strumento — fattori, item, scale, stanine (scala a 9 punti derivata dalla normale standardizzata) — e può quindi generare interpretazioni coerenti con le proprietà psicometriche del test. A questo si aggiunge una knowledge base di strategie editorialmente approvate, che il sistema richiama quando pertinenti al profilo dello studente.

L'elemento centrale dell'interazione è la sequenza di **passi guidati** (*guided steps*): una serie di fasi predefinite che determinano l'ordine del dialogo e il prompt di sistema per ciascuna fase, garantendo che la conversazione copra tutti gli ambiti del profilo. All'interno di ogni passo, l'LLM gode della flessibilità necessaria per adattare il linguaggio e le risposte agli input imprevisti dello studente, realizzando la forma ibrida tra controllo deterministico e adattività conversazionale.

### 2.3 Flusso di interazione

Il percorso tipo si articola in quattro fasi.

1. **Selezione dello strumento.** L'utente sceglie tra QSA, QSAr, ZTPI o intervista Savickas. Ciascuno strumento attiva una propria sequenza di passi guidati e un set di *prompt* specifici.

2. **Inserimento del profilo.** Per QSA, QSAr e ZTPI, l'utente inserisce i risultati del questionario; per Savickas, il sistema avvia un'intervista qualitativa a cinque domande, in cui l'LLM conduce la conversazione e genera una sintesi narrativa al termine.

3. **Visualizzazione.** Il profilo è mostrato come grafico a barre con codifica cromatica (verde per punti di forza, giallo per fascia media, rosso per aree di crescita).

4. **Chat guidata.** Il sistema propone una lettura fattore per fattore. Per ciascun fattore, l'LLM presenta l'esito, ne discute il significato e suggerisce strategie, attingendo alla *knowledge base* quando pertinente. L'utente può approfondire liberamente prima di passare al fattore successivo. Oltre alla lettura dei singoli esiti, il sistema ne evidenzia le connessioni — ad esempio tra l'ambito cognitivo e quello affettivo-motivazionale — aiutando lo studente a costruire una visione d'insieme del proprio profilo. Al termine, viene offerta una sintesi complessiva e la possibilità di condividere le strategie ritenute più utili.

## 3. Metodologia di valutazione

### 3.1 Disegno della ricerca

La valutazione adotta un disegno comparativo tra le due versioni del sistema, Step-by-Step (SBS) e la precedente ai4educ: al termine del percorso di chat guidata, i partecipanti hanno compilato un questionario di gradimento, descritto nel dettaglio — insieme alle metriche adottate — nel §3.3.

### 3.2 Partecipanti e procedura

Al momento della scrittura — in corso di raccolta — hanno completato il questionario 34 partecipanti: 7 attraverso la versione SBS e 27 attraverso la versione precedente (ai4educ). Il campione, non definitivo, è eterogeneo per età (14–53 anni) e livello di istruzione (dalla scuola secondaria di primo grado alla laurea magistrale). La procedura prevedeva la compilazione del QSA, la visualizzazione del profilo e la chat guidata fattore per fattore, al termine della quale veniva proposto il questionario di gradimento.

### 3.3 Strumenti e metriche

Il questionario di gradimento si compone di dieci item su scala Likert a cinque punti (1 = «Per niente», 5 = «Molto»), che coprono le seguenti dimensioni: utilità percepita, pertinenza delle risposte, chiarezza delle spiegazioni, adeguatezza del dettaglio, facilità d'uso dell'interfaccia, velocità di risposta, fiducia nelle informazioni ricevute, capacità di stimolare la riflessione su di sé, coinvolgimento generale e intenzione di riutilizzo o raccomandazione ad altri. Per ciascun item è calcolata la media aritmetica, separatamente per le due versioni del sistema (SBS e ai4educ), senza aggregazioni in sottoscale. Sono inoltre raccolti dati demografici (età, sesso, titolo di studio, tipo di istituto, provenienza geografica) e, nella versione estesa del questionario, due domande aperte per la raccolta di riflessioni libere e suggerimenti, analizzate qualitativamente tramite categorizzazione tematica.

## 4. Risultati

### 4.1 Esperienza utente

La versione SBS ottiene valutazioni superiori alla precedente in 9 dimensioni su 10. Dei 27 partecipanti della versione ai4educ, 16 hanno fornito valutazioni numeriche e 11 solo commenti aperti; per SBS è stato escluso un record di test, portando il numeratore a 6. La tabella seguente confronta le medie delle due versioni.

| Dimensione | SBS (n=6) | ai4educ (n=16) | Δ |
|---|---|---|---|---|
| Facilità d'uso | 4,17 | 3,38 | +0,79 |
| Pertinenza delle risposte | 4,17 | 3,56 | +0,60 |
| Fiducia nelle informazioni | 3,83 | 3,19 | +0,65 |
| Coinvolgimento | 3,67 | 3,06 | +0,60 |
| Capacità di stimolare la riflessione | 3,83 | 3,25 | +0,58 |
| Chiarezza | 4,00 | 3,69 | +0,31 |
| Velocità di risposta | 3,83 | 3,44 | +0,40 |
| Dettaglio delle risposte | 3,67 | 3,56 | +0,10 |
| Utilità percepita | 3,17 | 3,31 | −0,15 |
| Intenzione di riutilizzo | 3,83 | 3,12 | +0,71 |

I miglioramenti più marcati riguardano facilità d'uso (Δ = +0,79), intenzione di riutilizzo (Δ = +0,71) e fiducia (Δ = +0,65); l'unica dimensione sostanzialmente invariata è l'utilità percepita (Δ = −0,15, entro il range di variabilità atteso per campioni ridotti).

### 4.2 Autovalutazione pedagogica

Undici partecipanti hanno fornito risposte alle domande aperte (tutti della versione ai4educ). Dall'analisi tematica emergono quattro aree di criticità, affrontate nella versione SBS.

**Inserimento dati.** Tre partecipanti segnalano difficoltà nel caricamento dei punteggi: «mi ha chiesto di fare una cosa che avevo appena fatto», «inserirli 1 per 1 in chat è stato scomodo», con la richiesta esplicita di poter caricare un PDF per evitare errori di digitazione. Nella versione SBS questa fase è stata sostituita da un form iniziale di inserimento e dal caricamento diretto dei PDF degli esiti.

**Coerenza della memoria di sessione.** Un partecipante riporta «incongruenze molto grandi tra i dati forniti e i riassunti finali» nella prima analisi, pur riconoscendo che una seconda analisi era più coerente. Nella versione SBS la gestione della memoria di sessione è stata rivista per garantire che il riassunto rotante della conversazione rifletta fedelmente il profilo senza perdita di informazioni.

**Completezza del contesto.** Un partecipante osserva che il chatbot «dimentica alcune informazioni». Nella versione SBS la memoria di sessione è stata potenziata per preservare il contesto lungo l'intero dialogo, riducendo i fenomeni di *forgetting*.

**Lunghezza delle risposte.** Un partecipante suggerisce di «sintetizzare le risposte». Nella versione SBS è stato introdotto un limite di token per contenere l'estensione degli interventi del LLM, favorendo risposte più concise.

A queste soluzioni si aggiunge la scelta di un modello linguistico specifico per l'istanza SBS — Qwen 3.5 9B — che nei test ha mostrato un equilibrio efficace tra velocità di risposta e precisione delle analisi.

Sei partecipanti hanno espresso valutazioni positive sulla chiarezza, la pertinenza e l'utilità del sistema, descrivendo l'esperienza come «positiva», «interessante» e «il chatbot ha risposto alle aspettative in modo esauriente».

## 5. Discussione

I risultati mostrano un miglioramento diffuso della versione SBS rispetto alla precedente su 9 dimensioni su 10, con incrementi particolarmente marcati su facilità d'uso (Δ = +0,79), fiducia nelle informazioni (Δ = +0,65) e intenzione di riutilizzo (Δ = +0,71). Questi dati suggeriscono che le modifiche introdotte nell'architettura SBS — il form iniziale di inserimento dati, il potenziamento della memoria di sessione, il limite di token e l'adozione di Qwen 3.5 9B — hanno prodotto un effetto positivo sull'esperienza utente.

Le criticità emerse dalle risposte aperte della versione ai4educ riguardavano principalmente l'inserimento manuale dei dati e la coerenza delle analisi. La loro risoluzione nella versione SBS — il form iniziale di inserimento, il caricamento diretto dei PDF e il potenziamento della memoria di sessione — è coerente con i punteggi più alti registrati in facilità d'uso e fiducia. Rimane da verificare su un campione più ampio se anche le altre dimensioni — in particolare l'utilità percepita, sostanzialmente invariata — beneficino delle stesse modifiche.

Il presente lavoro si colloca nella fase di test del modello ADDIE (Analysis, Design, Development, Implementation, Evaluation): i dati raccolti informano il ciclo iterativo di sviluppo, più che costituire una validazione conclusiva. I risultati presentati corrispondono al ciclo più recente, in cui la versione SBS è stata sviluppata a seguito della valutazione della precedente (ai4educ), in un processo che ha già attraversato più iterazioni. Il campione è ridotto (n=6 per SBS, n=16 per ai4educ con dati numerici) e non probabilistico, e la differenza tra le due versioni potrebbe risentire di fattori confondenti come la diversa composizione demografica o la maturità del percorso di sviluppo. Per queste ragioni i risultati vanno letti come indicatori di tendenza, non come evidenza definitiva.

Sul piano più generale, l'architettura ibrida di Counselorbot — che combina passi guidati deterministici con la flessibilità di un LLM — si dimostra praticabile per l'autovalutazione assistita delle competenze strategiche. La possibilità di istruire il modello con direttive specifiche e di richiamare conoscenze contestuali apre la strada a forme di accompagnamento scalabili che la letteratura indica come ancora poco coperte (Wollny et al. 2021; Liu et al. 2025). Quanto alla sostenibilità economica sollevata in apertura, l'impiego di modelli aperti di dimensioni contenute, eseguibili anche su infrastrutture locali — come il Qwen 3.5 9B adottato per l'istanza SBS — suggerisce una via percorribile per contenere i costi di esercizio.

I dati raccolti costituiscono i primi feedback sull'esperienza d'uso del sistema e vanno letti come indicatori di tendenza, non come validazione conclusiva. Il dato disponibile è esclusivamente basato sull'autovalutazione degli studenti, che potrebbe risentire di effetti di desiderabilità sociale.

> _Metriche oggettive (tempi di risposta, tassi di completamento) da acquisire._

## 6. Conclusioni

I risultati ottenuti indicano che i modelli conversazionali basati su LLM sono oggi maturi per sostenere compiti riflessivi come l'autovalutazione delle competenze strategiche, a condizione che siano inseriti in un'architettura ibrida che ne guidi il comportamento. Questo lavoro ha presentato Counselorbot, un assistente conversazionale che realizza questa architettura. I risultati della fase di test — condotta su 34 partecipanti tra due versioni del sistema — mostrano che l'architettura SBS, con il suo dialogo guidato, la memoria di sessione potenziata e l'interfaccia ottimizzata per l'inserimento dati, ottiene valutazioni superiori alla versione precedente in 9 dimensioni su 10, con miglioramenti rilevanti in facilità d'uso e fiducia.

Lo studio si inserisce in un processo di sviluppo iterativo di tipo ADDIE e non costituisce una validazione conclusiva. I limiti — campione ridotto, non probabilistico, assenza di metriche oggettive — suggeriscono cautela nell'estensione dei risultati. È necessario un test su scala più ampia, con un disegno controllato e la raccolta di dati sia quantitativi sia qualitativi, per confermare le tendenze emerse.

Le prove finora condotte hanno riguardato il solo QSA, sebbene il sistema supporti già molteplici strumenti (QSAr, ZTPI, intervista Savickas, QPCS, QPCC, QAP). Una volta stabilizzata l'usabilità della risorsa, l'architettura a passi guidati potrà essere estesa agli altri questionari, replicando il medesimo impianto dialogico. Altre direzioni di sviluppo includono l'integrazione nativa con la piattaforma competenzestrategiche.it per il recupero automatico dei profili e lo studio longitudinale dell'impatto sulle strategie di apprendimento degli studenti. Una volta validato l'impianto con il QSA, la sperimentazione sarà estesa agli altri strumenti attualmente supportati in italiano — QSAr, ZTPI, intervista di Savickas, QPCS, QPCC, QAP — replicando il medesimo impianto dialogico. Successivamente, si procederà alla traduzione dei questionari nelle lingue supportate dall'interfaccia e alla validazione degli strumenti in ciascuna lingua.

## Bibliografia

Puech, R., Mačina, J., Chatain, J., Sachan, M., & Kapur, M. (2025). Towards the pedagogical steering of large language models for tutoring: A case study with modeling productive failure. In *Findings of the Association for Computational Linguistics: ACL 2025*. https://doi.org/10.18653/v1/2025.findings-acl.1348

Antunes, L. G., Passarelli, B., & Claro, S. V. (2025). Large language models as Socratic mentors: Transforming educational approaches for epistemic development. *Aracê, 7*(5), 24921–24936. https://doi.org/10.56238/arev7n5-229

Bender, E. M., Gebru, T., McMillan-Major, A., & Shmitchell, S. (2021). On the dangers of stochastic parrots: Can language models be too big? In *Proceedings of the 2021 ACM Conference on Fairness, Accountability, and Transparency* (pp. 610–623). https://doi.org/10.1145/3442188.3445922

Brown, T. B., Mann, B., Ryder, N., et al. (2020). Language models are few-shot learners. *Advances in Neural Information Processing Systems, 33*, 1877–1901.

Chang, D. H., Lin, M. P.-C., Hajian, S., & Wang, Q. Q. (2023). Educational design principles of using AI chatbot that supports self-regulated learning in education: Goal setting, feedback, and personalization. *Sustainability, 15*(17), 12921. https://doi.org/10.3390/su151712921

Chen, M., Tworek, J., Jun, H., et al. (2021). *Evaluating large language models trained on code*. arXiv. https://doi.org/10.48550/arXiv.2107.03374

Cukurova, M., Luckin, R., & Kent, C. (2020). Impact of an artificial intelligence research frame on the perceived credibility of educational research evidence. *International Journal of Artificial Intelligence in Education, 30*(2), 205–235. https://doi.org/10.1007/s40593-019-00188-w

D’Silva, G. M., Jani, M., Jadhav, V., Bhoir, A., & Amin, P. N. (2020). Career counselling chatbot using cognitive science and artificial intelligence. In H. Vasudevan, A. Michalas, N. Shekokar, & M. Narvekar (Eds.), *Advanced computing technologies and applications* (pp. 1–9). Springer. https://doi.org/10.1007/978-981-15-3242-9_1

Kasneci, E., Seßler, K., Küchemann, S., et al. (2023). ChatGPT for good? On opportunities and challenges of large language models for education. *Learning and Individual Differences, 103*, 102274. https://doi.org/10.1016/j.lindif.2023.102274

Kuhail, M. A., Alturki, N., Alramlawi, S., & Alhejori, K. (2022). Interacting with educational chatbots: A systematic review. *Education and Information Technologies, 28*(1), 973–1018. https://doi.org/10.1007/s10639-022-11177-3

Liu, X., Xiao, Y., & Li, D. (2025). Assessing strategic use of artificial intelligence in self-regulated learning: Instrument development and evidence from Chinese university students. *International Journal of Educational Technology in Higher Education, 22*, 69. https://doi.org/10.1186/s41239-025-00567-5

Mendez, S., Johanson, K., Conley, V. M., et al. (2020). Chatbots: A tool to supplement the future faculty mentoring of doctoral engineering students. *International Journal of Doctoral Studies, 15*, 373–392. https://doi.org/10.28945/4579

Neumann, A. T., Arndt, T., Köbis, L., et al. (2021). Chatbots as a tool to scale mentoring processes: Individually supporting self-study in higher education. *Frontiers in Artificial Intelligence, 4*, 668220. https://doi.org/10.3389/frai.2021.668220

Savickas, M. L. (2018). The career construction interview. In *Career counseling* (2a ed., pp. 57–70). American Psychological Association. https://doi.org/10.1037/0000105-004

Self, J. A. (1974). Student models in computer-aided instruction. *International Journal of Man-Machine Studies, 6*(2), 261–276. https://doi.org/10.1016/S0020-7373(74)80005-2

Su, L. H., Truong, D.-H., Tran, T.-Y.-L., et al. (2020). Development of an AI chatbot to support admissions and career guidance for universities. *International Journal of Emerging Multidisciplinary Research, 4*(2), 13–20. https://doi.org/10.22662/IJEMR.2020.4.2.013

Susnjak, T. (2023). Beyond predictive learning analytics modelling and onto explainable artificial intelligence with prescriptive analytics and ChatGPT. *International Journal of Artificial Intelligence in Education, 34*, 452–482. https://doi.org/10.1007/s40593-023-00336-3

Tankelevitch, L., Kewenig, V., Simkute, A., et al. (2024). The metacognitive demands and opportunities of generative AI. In *Proceedings of the 2024 CHI Conference on Human Factors in Computing Systems* (pp. 1–24). https://doi.org/10.1145/3613904.3642902

Weizenbaum, J. (1966). ELIZA—A computer program for the study of natural language communication between man and machine. *Communications of the ACM, 9*(1), 36–45. https://doi.org/10.1145/365153.365168

Wollny, S., Schneider, J., Di Mitri, D., et al. (2021). Are we there yet? A systematic literature review on chatbots in education. *Frontiers in Artificial Intelligence, 4*, 654924. https://doi.org/10.3389/frai.2021.654924

Zawacki-Richter, O., Marín, V. I., Bond, M., & Gouverneur, F. (2019). Systematic review of research on artificial intelligence applications in higher education: Where are the educators? *International Journal of Educational Technology in Higher Education, 16*(1), 39. https://doi.org/10.1186/s41239-019-0171-0

---

*Articolo in preparazione. Limite: 30.000 battute (spazi inclusi). Norme editoriali Roma TrE-PRESS.*
