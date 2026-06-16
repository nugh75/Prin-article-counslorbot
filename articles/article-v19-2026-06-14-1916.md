# Counselorbot: un assistente conversazionale per l’orientamento

Abstract (italiano)

L’articolo presenta Counselorbot, un assistente conversazionale basato su LLM per l’autovalutazione guidata delle competenze strategiche degli studenti. Il lavoro descrive l’architettura ibrida del sistema — che combina passi guidati deterministici con la flessibilità di un LLM — e il framework delle competenze strategiche e il Questionario sulle Strategie di Apprendimento (QSA) su cui si basa. Un confronto esplorativo tra una configurazione a passi guidati e una conversazionale libera ha mostrato tendenze favorevoli per l’approccio strutturato. Lo studio si colloca nella fase di test del modello ADDIE e discute limiti e sviluppi futuri.

Abstract (inglese)

This paper presents Counselorbot, an LLM-based conversational assistant for guided self-assessment of students’ strategic competences. It describes the hybrid architecture — combining deterministic guided steps with LLM flexibility — and the strategic competences framework and Learning Strategies Questionnaire (QSA) it builds upon. An exploratory comparison between a step-by-step configuration and a free conversational one showed favourable trends for the structured approach. The study is positioned within the ADDIE model’s test phase and discusses limitations and future developments.

Parole chiave: autovalutazione; competenze strategiche; LLM; assistente conversazionale; QSA; GenAI; ADDIE
Keywords: self-assessment; strategic competences; LLM; educational *chatbot*; QSA; generative AI; ADDIE

Nota biografica: l’autore svolge attività di ricerca sui temi dell’orientamento, dell’autovalutazione e dell’impiego pedagogico dei modelli linguistici di grandi dimensioni, con particolare attenzione alla progettazione di strumenti conversazionali per il supporto agli studenti.

## Indice

Introduzione
1. Quadro teorico e stato dell’arte
1.1 LLM, rischi e vincoli in educazione
1.2 Dal tutoring al mentoring: verso l’*agency* epistemica
1.3 Il framework delle competenze strategiche come base teorica
2. Progettazione di Counselorbot
2.1 Obiettivi di design e requisiti
2.2 Architettura
2.3 Flusso di interazione
3. Metodologia di valutazione
3.1 Disegno della ricerca
3.2 Partecipanti e procedura
3.3 Strumenti e metriche
3.4 Selezione del modello linguistico
4. Risultati
4.1 Esperienza utente
4.2 Risposte aperte
5. Discussione
6. Conclusioni
Bibliografia

## Introduzione

Nel panorama dell’orientamento scolastico e professionale, i questionari di autovalutazione occupano un ruolo importante (Pellerey et al. 2013). Nel caso del Questionario sulle Strategie di Apprendimento (QSA), tale autovalutazione riguarda le competenze strategiche, cioè l’insieme di risorse cognitive, metacognitive, affettivo-motivazionali e volitive che sostengono la regolazione dell’apprendimento. Al termine della compilazione, questi strumenti restituiscono un profilo sintetico accompagnato da brevi commenti, che può essere oggetto di riflessione personale o discusso con un tutor, un docente o un orientatore; tale accompagnamento trova però un limite strutturale nella disponibilità di chi lo svolge. Inoltre, la letteratura evidenzia come la mancanza di supporto umano riduca l’efficacia dei *feedback* prodotti da questi strumenti e la capacità di tradurre i risultati in azioni concrete (Wollny et al. 2021). I recenti modelli conversazionali basati su *Large Language Model* (LLM) possono costituire una risposta scalabile a questo accompagnamento.

Questo lavoro si propone di verificare se un’architettura ibrida — nella quale passi deterministici vincolano la flessibilità di un LLM — possa rappresentare una via percorribile per l’accompagnamento riflessivo nei processi di orientamento. Per verificarlo, lo studio pone a confronto due configurazioni di Counselorbot: una a passi guidati (CB-SBS) e una conversazionale non guidata (CB-C), valutandone l’esperienza utente e i feedback qualitativi in un campione esplorativo.

La ricerca si colloca tuttavia in una fase ancora esplorativa: i risultati qui presentati documentano lo stato attuale dello sviluppo e una fase intermedia del percorso di validazione del sistema. L’indagine empirica, inoltre, si è focalizzata sulla riflessione relativa agli esiti di un unico strumento: il Questionario sulle Strategie di Apprendimento (QSA). Ciononostante, l’architettura del sistema risulta scalabile e progettata per accogliere l’integrazione di molteplici ulteriori strumenti.

Il lavoro si articola in sei paragrafi. Il §1 presenta il quadro teorico e lo stato dell’arte sui LLM in educazione; il §2 descrive la progettazione e l’architettura di Counselorbot. Il §3 illustra la metodologia di valutazione del sistema, i cui risultati sono presentati al §4. Il §5 discute le implicazioni dei risultati e i limiti dello studio, mentre il §6 conclude tracciando le direzioni di sviluppo futuro.

## 1. Quadro teorico e stato dell’arte

### 1.1 LLM, rischi e vincoli in educazione

Gli LLM — grandi reti neurali specializzate nel linguaggio (Brown et al. 2020) — costituiscono la famiglia più diffusa dell’intelligenza artificiale generativa (GenAI) e il motore dei moderni *chatbot*. Essi permettono di superare i limiti dei sistemi del passato basati su regole (*rule-based*) (ELIZA, Weizenbaum 1966), grazie alla capacità di produrre output adattivi e coerenti in linguaggio naturale (Brown et al. 2020; Kasneci et al. 2023).

Tuttavia, l’integrazione di queste tecnologie nei contesti educativi introduce una serie di rischi che devono essere attentamente monitorati. Sul piano tecnico e contenutistico, permangono criticità legate all’inaccuratezza delle informazioni, alla possibile riproduzione di bias demografici e alla diffusione di concezioni stereotipate. Tale scenario è ulteriormente complicato dalla difficoltà di discernere informazioni autentiche da contenuti generati artificialmente (Bender et al. 2021; Tankelevitch et al. 2024).

A tali problematiche si affiancano rischi di natura psicosociale e cognitiva. Da un lato, persiste un problema di percezione: a parità di contenuto, le indicazioni fornite da un sistema artificiale tendono a essere ritenute meno credibili rispetto a quelle di un operatore umano (Cukurova et al. 2020). Dall’altro, un affidamento sproporzionato a tali strumenti per la risoluzione di problemi o la generazione di testi rischia di creare una dipendenza eccessiva dal supporto artificiale, compromettendo lo sviluppo di abilità critiche come l’analisi, la sintesi e la creatività, essenziali per la crescita intellettuale dello studente.

### 1.2 Dal tutoring al mentoring: verso l’*agency* epistemica

La letteratura scientifica conferma il potenziale dei *chatbot* educativi, le cui funzioni spaziano dall’orientamento informativo (*informational*) al *tutoring* disciplinare e al *mentoring* formativo (Kuhail et al. 2022; Wollny et al. 2021; Zawacki-Richter et al. 2019). In questo contesto, gli LLM offrono vantaggi unici grazie alla loro *vincolabilità*: tramite *system prompt* o *meta-prompt* è possibile definire comportamenti e ruoli, migliorando l’accuratezza tramite il richiamo di conoscenze contestuali (Kasneci et al. 2023). Tali sistemi possono rendere scalabili processi di orientamento altrimenti non sostenibili (Neumann et al. 2021). Impiegati specificamente come *tutor socratici* — un modello dialogico in cui l’AI guida lo studente alla scoperta attraverso domande, anziché fornire risposte dirette — possono sostenere lo sviluppo metacognitivo e l’*agency* epistemica, ossia la capacità dello studente di porsi come agente attivo nella costruzione della propria conoscenza (Antunes et al. 2025).

Perché tali processi si realizzino, il dialogo deve essere progettato attorno a principi di autoregolazione (Chang et al. 2023). È inoltre fondamentale che gli studenti sviluppino una consapevolezza metacognitiva specifica, intesa come la capacità di valutare criticamente le risposte dell’AI per integrarle efficacemente nel proprio percorso di apprendimento (Tankelevitch et al. 2024). Le strategie di autovalutazione supportate dall’AI risultano, tuttavia, ancora tra le meno utilizzate dagli studenti (Liu et al. 2025).

### 1.3 Il framework delle competenze strategiche come base teorica

Il costrutto di competenza strategica — sviluppato dal gruppo di ricerca coordinato da Pellerey (Pellerey et al., 2013) — costituisce il riferimento teorico ideale per orientare queste interazioni. Esso affonda le radici nel concetto aristotelico-tomista di abito (*habitus*) e designa l’insieme delle abilità cognitive, metacognitive, affettivo-motivazionali e volitive che permettono allo studente di pianificare e regolare il proprio apprendimento. Il framework articola il costrutto in nove aree tematiche (dalle strategie di studio alla progettualità) ed è alla base di diversi strumenti validati, tra cui il Questionario sulle Strategie di Apprendimento (QSA). Sulla piattaforma competenzestrategiche.it sono disponibili altri strumenti basati sul medesimo framework, già integrati in Counselorbot; il presente studio ne valuta tuttavia soltanto uno, il QSA.

Si delinea, pertanto, un duplice scenario: da un lato, strumenti di orientamento validi e consolidati, ma potenzialmente privi del supporto necessario per una piena valorizzazione; dall’altro, sistemi conversazionali sempre accessibili che possono sia sopperire a eventuali limiti di disponibilità degli operatori, sia rappresentare una modalità innovativa di fruizione degli strumenti. È in questo spazio che si colloca Counselorbot, integrando la flessibilità dell’LLM con la struttura rigorosa del framework delle competenze strategiche di Pellerey e colleghi.

## 2. Progettazione di Counselorbot

### 2.1 Obiettivi di design e requisiti

Il sistema è progettato per accompagnare lo studente nella riflessione sugli esiti del QSA, assunto come caso d’uso principale per testare l’architettura a passi guidati. Tuttavia, sono già implementati gli altri strumenti del sito competenzestrategiche.it (QSAr, ZTPI, QAP, QPCS, QPCC) e due strumenti aggiuntivi: la *career counseling interview* di Savickas (Savickas 2018) e il sistema PQBL di apprendimento basato su domande (Jemstedt e Bälter 2024). Una volta validata l’architettura sul QSA, si procederà alla validazione sugli altri strumenti. Il dialogo è orientato da un protocollo pedagogico (Puech et al. 2025) che, articolandosi in una sequenza strutturata di passi, incanala la flessibilità dell’LLM verso il consolidamento di habitus, disposizioni della persona, di riflessione consapevole e autodirezione.

### 2.2 Architettura

L’architettura di Counselorbot si fonda su tre componenti. Un *backend* espone i servizi di chat, amministrazione, gestione dei questionari e memoria di sessione; un livello di astrazione verso i provider AI rende il sistema indipendente dal modello linguistico sottostante, permettendo di commutare tra provider remoti e locali senza interruzioni. Un *frontend* modulare offre all’utente un selettore di strumenti, un modulo di inserimento punteggi, una visualizzazione del profilo e l’interfaccia di chat guidata. Un database relazionale conserva le configurazioni (prompt, passi guidati, strategie) e la memoria di sessione.

Il sistema conosce la struttura di ciascun questionario — fattori, item, scale, stanine — e genera interpretazioni coerenti con le proprietà psicometriche del test. Le strategie sono indicizzate per contenuto semantico e recuperate automaticamente in base al fattore e al profilo dello studente. Un grafo della conoscenza collega strumenti, fattori e strategie, permettendo di attingere a contenuti correlati oltre la corrispondenza esatta dei termini. Le interazioni sono registrate in un archivio consultabile dagli amministratori.

### 2.3 Flusso di interazione

L’elemento centrale dell’interazione è la sequenza di passi guidati (*guided steps*): una serie di fasi predefinite che determinano l’ordine del dialogo e il *meta-prompt* per ciascuna fase, garantendo che la conversazione copra tutti gli ambiti dello strumento selezionato. All’interno di ogni passo, l’LLM dispone della flessibilità necessaria per adattare linguaggio e risposte agli input dello studente, realizzando la forma ibrida tra controllo deterministico e adattività conversazionale.

Il percorso QSA — caso valutato in questo studio — si articola in tre fasi.

1. Inserimento del profilo. Lo studente inserisce i punteggi del QSA tramite un form dedicato.

2. Visualizzazione. Il profilo è mostrato come grafico a barre con codifica cromatica (verde per punti di forza, giallo per fascia media, rosso per aree di crescita).

3. Interazione guidata. La fase si articola in una duplice modalità: analitica, dedicata all’esplorazione dei singoli fattori, e sintetica, orientata a tracciare connessioni tra le diverse dimensioni. Per ogni fattore, l’LLM restituisce l’esito, ne discute il significato e propone strategie personalizzate attingendo alla base di conoscenza. Il percorso si conclude con una sintesi complessiva e la possibilità di salvare le strategie ritenute più significative.

Gli altri strumenti già implementati (QSAr, ZTPI, QAP, QPCS, QPCC, intervista Savickas, PQBL) seguono un’analoga struttura a passi guidati, adattata alle specificità di ciascuno.

## 3. Metodologia di valutazione

### 3.1 Disegno della ricerca

Per valutare il sistema descritto nel §2, si è adottato il seguente disegno di ricerca. Lo sviluppo di Counselorbot segue il modello ADDIE (Branch 2009), un acronimo che indica cinque fasi: *Analysis* (analisi dei bisogni formativi e del contesto), *Design* (progettazione dell’architettura e dell’interazione), *Development* (realizzazione del sistema), *Implementation* (rilascio e formazione degli utenti) ed *Evaluation* (valutazione dei risultati). Il lavoro descritto in questo articolo si colloca nella fase di *Evaluation* del secondo ciclo di sviluppo.

Il primo ciclo ha prodotto la versione *counselorbot-chat* (CB-C) basata su un’architettura RAG (Retrieval-Augmented Generation) con *system prompt*, in cui l’LLM rispondeva alle domande dello studente attingendo da documenti caricati in una memoria vettoriale, senza una logica di navigazione predefinita. I risultati di questo primo ciclo — discussi in §4 — hanno evidenziato criticità nella coerenza delle analisi e nell’inserimento manuale dei dati, portando a un secondo ciclo di progettazione. Tra i due cicli, il sistema è stato sottoposto a cicli di ottimizzazione che hanno orientato lo sviluppo della versione successiva. Il secondo ciclo ha prodotto la versione Step-by-Step *counselorbot-sbs* (CB-SBS), introducendo i passi guidati, il grafo della conoscenza, l’indicizzazione semantica delle strategie e l’interfaccia ottimizzata per l’inserimento dei profili.

La valutazione presentata in questo lavoro adotta un disegno comparativo *between-subjects* tra le due versioni (CB-SBS e CB-C): ciascun partecipante ha utilizzato una sola versione, al termine della quale ha compilato un questionario di gradimento, descritto nel §3.3.

### 3.2 Partecipanti e procedura

Al momento della scrittura — la raccolta è in corso — hanno completato il questionario 33 partecipanti: 6 attraverso la versione CB-SBS e 27 attraverso la versione CB-C. Tutti i 33 partecipanti hanno fornito valutazioni numeriche; 11 dei 27 utenti CB-C hanno inoltre risposto alle domande aperte. Il campione è composto da studenti universitari. La procedura prevedeva, per entrambe le versioni, la compilazione del QSA e l’interazione con l’assistente conversazionale; nella versione CB-SBS, tale interazione era organizzata tramite visualizzazione del profilo e chat guidata fattore per fattore. Al termine dell’esperienza veniva proposto il questionario di gradimento.

### 3.3 Strumenti e metriche

Il questionario di gradimento si compone di dieci item su scala Likert a cinque punti (1 = «Per niente», 5 = «Molto»), che coprono le seguenti dimensioni: utilità percepita, pertinenza delle risposte, chiarezza delle spiegazioni, adeguatezza del dettaglio, facilità d’uso dell’interfaccia, velocità di risposta, fiducia nelle informazioni ricevute, capacità di stimolare la riflessione su di sé, coinvolgimento generale e intenzione di riutilizzo o raccomandazione ad altri. Per ciascun item è calcolata la media aritmetica, separatamente per le due versioni del sistema, senza aggregazioni in sottoscale. Sono inoltre raccolti dati demografici (età, sesso, titolo di studio, tipo di istituto, provenienza geografica) e, nella versione estesa del questionario, due domande aperte per la raccolta di riflessioni libere e suggerimenti, analizzate qualitativamente tramite categorizzazione tematica.

### 3.4 Selezione del modello linguistico

Per l’istanza CB-SBS è stato selezionato Gemma 4 4B (Gemma Team 2025), un modello aperto da 4B parametri effettivi che consente l’esecuzione locale, con vantaggi in termini di riservatezza dei dati e contenimento dei costi. La scelta è stata guidata da un benchmark sistematico dei modelli Ollama con meno di 15B parametri sull’intero flusso QSA a 11 passi: Gemma 4 4B ha ottenuto il punteggio di qualità più alto (0.83/1.00), coprendo tutti i fattori con interpretazioni accurate e consigli pratici, con una velocità media di 472 token al secondo (tok/s) e un tempo al primo token (TTFT, *time to first token*) di 4.5 s (cfr. Gemma Team 2025).

## 4. Risultati

### 4.1 Esperienza utente

I risultati del confronto tra le due versioni indicano un miglioramento diffuso dell'esperienza utente nella versione a passi guidati. La versione CB-SBS presenta valutazioni tendenzialmente superiori alla precedente in 9 dimensioni su 10, con incrementi più marcati in facilità d'uso (Δ = +0,79), intenzione di riutilizzo (Δ = +0,71) e fiducia nelle informazioni (Δ = +0,65). Undici dei 27 partecipanti CB-C hanno fornito anche risposte alle domande aperte. La tabella seguente riporta il dettaglio.

| Dimensione                           | CB-SBS (n=6) | CB-C (n=16) | Δ     |
|--------------------------------------|--------------|-------------|-------|
| Facilità d’uso                       | 4,17         | 3,38        | +0,79 |
| Pertinenza delle risposte            | 4,17         | 3,56        | +0,60 |
| Fiducia nelle informazioni           | 3,83         | 3,19        | +0,65 |
| Coinvolgimento                       | 3,67         | 3,06        | +0,60 |
| Capacità di stimolare la riflessione | 3,83         | 3,25        | +0,58 |
| Chiarezza                            | 4,00         | 3,69        | +0,31 |
| Velocità di risposta                 | 3,83         | 3,44        | +0,40 |
| Dettaglio delle risposte             | 3,67         | 3,56        | +0,10 |
| Utilità percepita                    | 3,17         | 3,31        | −0,15 |
| Intenzione di riutilizzo             | 3,83         | 3,12        | +0,71 |

### 4.2 Risposte aperte

Gli 11 partecipanti CB-C che hanno risposto alle domande aperte evidenziano tre aree di criticità, affrontate nella versione CB-SBS. Sei di loro hanno inoltre espresso valutazioni positive su chiarezza, pertinenza e utilità, descrivendo l'esperienza come «positiva», «interessante» e «l'assistente conversazionale ha risposto alle aspettative in modo esauriente». Dall'analisi tematica delle criticità emergono tre aree principali.

Inserimento dati. Tre partecipanti segnalano difficoltà nel caricamento dei punteggi: «mi ha chiesto di fare una cosa che avevo appena fatto», «inserirli 1 per 1 in chat è stato scomodo»; emerge inoltre la richiesta di poter caricare un PDF. In risposta, nella versione CB-SBS questa fase è stata sostituita da un form iniziale e dal caricamento diretto dei PDF degli esiti.

Memoria di sessione. Un partecipante riporta «incongruenze molto grandi tra i dati forniti e i riassunti finali»; un altro osserva che l’assistente «dimentica alcune informazioni». Nella versione CB-SBS la gestione della memoria è stata rivista attraverso una sintesi dinamica del dialogo e l’iniezione costante dei punteggi del profilo a ogni turno.

Lunghezza delle risposte. Un partecipante suggerisce di «sintetizzare le risposte». Nella versione CB-SBS è stato introdotto un limite di token per contenere l’estensione degli interventi del LLM.

## 5. Discussione

I risultati del confronto tra le due versioni mostrano valutazioni tendenzialmente più favorevoli per CB-SBS in 9 dimensioni su 10. Gli incrementi in facilità d’uso e fiducia sono coerenti con gli interventi progettuali introdotti — form di inserimento, memoria di sessione rivista, limite di token — che hanno risposto alle principali criticità emerse dai feedback qualitativi di CB-C. L’utilità percepita, sostanzialmente invariata, potrebbe dipendere dalla natura stessa del compito riflessivo, che richiede un coinvolgimento attivo indipendente dall’interfaccia.

Queste tendenze sono in linea con la letteratura sull’importanza dei vincoli pedagogici per l’impiego degli LLM in contesti educativi (Kasneci et al. 2023) e con l’idea che un’interfaccia strutturata possa attenuare il problema di credibilità percepita sollevato da Cukurova et al. (2020). L’architettura ibrida a passi guidati si dimostra pertanto una via praticabile per accompagnare la riflessione sugli esiti del QSA, in coerenza con i principi di autoregolazione e mentoring socratico discussi nel quadro teorico.

I limiti del presente studio sono molteplici. Il campione è ridotto (n=6 per CB-SBS, n=27 per CB-C), non probabilistico e composto esclusivamente da studenti universitari; la differenza tra le due versioni potrebbe risentire di fattori confondenti come la diversa composizione dei gruppi e la maturità del percorso di sviluppo. Il dato disponibile è basato sull’autovalutazione degli studenti, che potrebbe risentire di effetti di desiderabilità sociale, e mancano metriche oggettive come tempi di risposta e tassi di completamento. I risultati vanno pertanto letti come indicatori di tendenza, non come evidenza definitiva, e richiedono una verifica su campione più ampio con disegno controllato.

Sul piano progettuale, l’impiego di modelli aperti di dimensioni contenute ed eseguibili localmente — come Gemma 4 4B — suggerisce una via percorribile per contenere i costi di esercizio e limitare la circolazione esterna dei dati. Quanto ai presidi contro i rischi discussi nel §1.1, l’uso di una base di conoscenza di strategie approvate e il vincolo dei *meta-prompt* potrebbero ridurre il margine di inaccuratezza; resta da verificare se l’architettura a passi guidati contenga efficacemente il rischio di dipendenza, che richiederà uno studio longitudinale.

## 6. Conclusioni

Il presente lavoro ha mostrato la praticabilità di un’architettura ibrida a passi guidati per l’accompagnamento riflessivo sugli esiti del QSA. I dati raccolti nella fase di test del modello ADDIE indicano tendenze coerenti con gli interventi progettuali introdotti, pur con i limiti discussi nel §5. La priorità per il prossimo ciclo di sviluppo è un confronto controllato su campione più ampio, con metriche oggettive e disegno longitudinale. Una volta validata l’architettura, i passi guidati potranno essere estesi agli altri strumenti già implementati. Sono inoltre in fase di progettazione un sistema di anonimizzazione per l’analisi su larga scala delle conversazioni e meccanismi di memoria condivisa per il miglioramento collettivo del supporto.

## Bibliografia

Gemma Team, Google DeepMind. (2025). Gemma 4: Advancing open language models. https://ai.google.dev/gemma

Pellerey, M., Epifani, F., Grządziel, D., Margottini, M., & Ottone, E. (2013). *Imparare a dirigere se stessi*. CNOS-FAP, Roma.

Puech, R., Mačina, J., Chatain, J., Sachan, M., & Kapur, M. (2025). Towards the pedagogical steering of large language models for tutoring: A case study with modeling productive failure. In *Findings of the Association for Computational Linguistics: ACL 2025*. https://doi.org/10.18653/v1/2025.findings-acl.1348

Antunes, L. G., Passarelli, B., & Claro, S. V. (2025). Large language models as Socratic mentors: Transforming educational approaches for epistemic development. *Aracê, 7*(5), 24921–24936. https://doi.org/10.56238/arev7n5-229

Bender, E. M., Gebru, T., McMillan-Major, A., & Shmitchell, S. (2021). On the dangers of stochastic parrots: Can language models be too big? In *Proceedings of the 2021 ACM Conference on Fairness, Accountability, and Transparency* (pp. 610–623). https://doi.org/10.1145/3442188.3445922

Branch, R. M. (2009). *Instructional design: The ADDIE approach*. Springer. https://doi.org/10.1007/978-0-387-09506-6

Brown, T. B., Mann, B., Ryder, N., et al. (2020). Language models are few-shot learners. *Advances in Neural Information Processing Systems, 33*, 1877–1901.

Chang, D. H., Lin, M. P.-C., Hajian, S., & Wang, Q. Q. (2023). Educational design principles of using AI *chatbot* that supports self-regulated learning in education: Goal setting, feedback, and personalization. *Sustainability, 15*(17), 12921. https://doi.org/10.3390/su151712921

Cukurova, M., Luckin, R., & Kent, C. (2020). Impact of an artificial intelligence research frame on the perceived credibility of educational research evidence. *International Journal of Artificial Intelligence in Education, 30*(2), 205–235. https://doi.org/10.1007/s40593-019-00188-w

D’Silva, G. M., Jani, M., Jadhav, V., Bhoir, A., & Amin, P. N. (2020). Career counselling *chatbot* using cognitive science and artificial intelligence. In H. Vasudevan, A. Michalas, N. Shekokar, & M. Narvekar (Eds.), *Advanced computing technologies and applications* (pp. 1–9). Springer. https://doi.org/10.1007/978-981-15-3242-9_1

Jemstedt, A., Bälter, O., Gavel, A., Glassey, R., & Bosk, D. (2024). Less to produce and less to consume: The advantage of pure question-based learning. *Interactive Learning Environments*. https://doi.org/10.1080/10494820.2024.2362830

Kasneci, E., Seßler, K., Küchemann, S., et al. (2023). ChatGPT for good? On opportunities and challenges of large language models for education. *Learning and Individual Differences, 103*, 102274. https://doi.org/10.1016/j.lindif.2023.102274

Kuhail, M. A., Alturki, N., Alramlawi, S., & Alhejori, K. (2022). Interacting with educational *chatbot*s: A systematic review. *Education and Information Technologies, 28*(1), 973–1018. https://doi.org/10.1007/s10639-022-11177-3

Lewis, P., Perez, E., Piktus, A., et al. (2020). Retrieval-Augmented Generation for knowledge-intensive NLP tasks. *Advances in Neural Information Processing Systems, 33*, 9459–9474.

Liu, X., Xiao, Y., & Li, D. (2025). Assessing strategic use of artificial intelligence in self-regulated learning: Instrument development and evidence from Chinese university students. *International Journal of Educational Technology in Higher Education, 22*, 69. https://doi.org/10.1186/s41239-025-00567-5

Mendez, S., Johanson, K., Conley, V. M., et al. (2020). *chatbot*s: A tool to supplement the future faculty mentoring of doctoral engineering students. *International Journal of Doctoral Studies, 15*, 373–392. https://doi.org/10.28945/4579

Neumann, A. T., Arndt, T., Köbis, L., et al. (2021). *chatbot*s as a tool to scale mentoring processes: Individually supporting self-study in higher education. *Frontiers in Artificial Intelligence, 4*, 668220. https://doi.org/10.3389/frai.2021.668220

Savickas, M. L. (2018). The career construction interview. In *Career counseling* (2a ed., pp. 57–70). American Psychological Association. https://doi.org/10.1037/0000105-004

Self, J. A. (1974). Student models in computer-aided instruction. *International Journal of Man-Machine Studies, 6*(2), 261–276. https://doi.org/10.1016/S0020-7373(74)80005-2

Su, L. H., Truong, D.-H., Tran, T.-Y.-L., et al. (2020). Development of an AI *chatbot* to support admissions and career guidance for universities. *International Journal of Emerging Multidisciplinary Research, 4*(2), 13–20. https://doi.org/10.22662/IJEMR.2020.4.2.013

Susnjak, T. (2023). Beyond predictive learning analytics modelling and onto explainable artificial intelligence with prescriptive analytics and ChatGPT. *International Journal of Artificial Intelligence in Education, 34*, 452–482. https://doi.org/10.1007/s40593-023-00336-3

Tankelevitch, L., Kewenig, V., Simkute, A., et al. (2024). The metacognitive demands and opportunities of generative AI. In *Proceedings of the 2024 CHI Conference on Human Factors in Computing Systems* (pp. 1–24). https://doi.org/10.1145/3613904.3642902

Weizenbaum, J. (1966). ELIZA—A computer program for the study of natural language communication between man and machine. *Communications of the ACM, 9*(1), 36–45. https://doi.org/10.1145/365153.365168

Wollny, S., Schneider, J., Di Mitri, D., et al. (2021). Are we there yet? A systematic literature review on *chatbot*s in education. *Frontiers in Artificial Intelligence, 4*, 654924. https://doi.org/10.3389/frai.2021.654924

Zawacki-Richter, O., Marín, V. I., Bond, M., & Gouverneur, F. (2019). Systematic review of research on artificial intelligence applications in higher education: Where are the educators? *International Journal of Educational Technology in Higher Education, 16*(1), 39. https://doi.org/10.1186/s41239-019-0171-0
