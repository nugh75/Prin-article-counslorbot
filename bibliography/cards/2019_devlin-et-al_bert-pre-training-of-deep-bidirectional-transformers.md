<!-- pdf_path: Prin-article-counslorbot/bibliography/pdf/2019_devlin-et-al_bert-pre-training-of-deep-bidirectional-transformers.pdf -->
<!-- pdf_id: 5f714df9-e396-424a-8539-9042e4b31562 -->

# Scheda bibliografica

> Modifica solo il testo sotto ogni titolo. NON rimuovere i marcatori `<!-- field:... -->`.

<!-- field:title -->
## Titolo

BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding

<!-- field:authors -->
## Autori

Jacob Devlin, Ming-Wei Chang, Kenton Lee, Kristina Toutanova

<!-- field:year -->
## Anno

2019

<!-- field:publication -->
## Rivista / editore

arXiv

<!-- field:volumeIssuePages -->
## Volume, fascicolo e pagine

arXiv:1810.04805v2

<!-- field:doi -->
## DOI

Non rilevato

<!-- field:isbn -->
## ISBN

Non rilevato

<!-- field:url -->
## URL

https://arxiv.org/abs/1810.04805

<!-- field:documentType -->
## Tipo di documento

Preprint

<!-- field:language -->
## Lingua originale

English

<!-- field:citation -->
## Citazione bibliografica completa

Devlin, J., Chang, M.-W., Lee, K., & Toutanova, K. (2019). BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding. arXiv preprint arXiv:1810.04805.

<!-- field:abstractIt -->
## Riassunto in italiano

L'autore introduce BERT (Bidirectional Encoder Representations from Transformers), un nuovo modello di rappresentazione linguistica progettato per addestrare rappresentazioni bidirezionali profonde da testo non etichettato condizionando congiuntamente sia il contesto sinistro che destro in tutti gli strati. A differenza dei modelli precedenti unidirezionali, BERT utilizza un obiettivo di pre-addestramento basato su un linguaggio mascherato (MLM) e una previsione della prossima frase (NSP). Il modello pre-addestrato può essere sottoposto a fine-tuning con un singolo strato di output aggiuntivo per ottenere risultati state-of-the-art su undici compiti di elaborazione del linguaggio naturale, tra cui question answering e inferenza linguistica, migliorando significativamente le prestazioni su benchmark come GLUE, MultiNLI e SQuAD.

<!-- field:abstractEn -->
## Abstract in English

We introduce BERT (Bidirectional Encoder Representations from Transformers), a new language representation model designed to pre-train deep bidirectional representations from unlabeled text by jointly conditioning on both left and right context in all layers. Unlike previous models, BERT uses a masked language model (MLM) and a next sentence prediction (NSP) objective. The pre-trained model can be fine-tuned with just one additional output layer to achieve state-of-the-art results on eleven natural language processing tasks, including question answering and language inference, significantly improving performance on benchmarks such as GLUE, MultiNLI, and SQuAD.

<!-- field:keywords -->
## Parole chiave

Natural Language Processing, Pre-training, Fine-tuning, Transformers, Bidirectional Representations, Masked Language Model, Question Answering, GLUE Benchmark

<!-- field:researchObjectives -->
## Obiettivi della ricerca

Introdurre un nuovo modello di rappresentazione linguistica (BERT) che superi i limiti dei modelli unidirezionali esistenti (come ELMo e GPT) permettendo un condizionamento bidirezionale profondo su testo non etichettato. Dimostrare che il pre-addestramento bidirezionale riduce la necessità di architetture specifiche per compito e migliora le prestazioni su una vasta gamma di compiti NLP.

<!-- field:researchQuestions -->
## Domande di ricerca

1. È possibile pre-addestrare rappresentazioni bidirezionali profonde da testo non etichettato? 2. Il pre-addestramento bidirezionale riduce la necessità di architetture specifiche per compito? 3. BERT può ottenere risultati state-of-the-art su una suite di compiti di livello frase e token?

<!-- field:methodology -->
## Metodologia

Il framework di BERT consiste in due fasi: pre-addestramento e fine-tuning. Durante il pre-addestramento, il modello viene addestrato su dati non etichettati utilizzando due compiti non supervisionati: 1) Masked Language Model (MLM), dove il 15% dei token viene mascherato casualmente e il modello deve prevedere il token originale basandosi sul contesto; 2) Next Sentence Prediction (NSP), dove il modello deve prevedere se la seconda frase in una coppia è la vera frase successiva o casuale. Durante il fine-tuning, il modello pre-addestrato viene inizializzato con i parametri appresi e tutti i parametri vengono aggiustati utilizzando dati etichettati per compiti specifici (es. SQuAD, MNLI). L'architettura è un Transformer bidirezionale.

<!-- field:sample -->
## Campione / partecipanti

Input: [CLS] the man went to [MASK] store [SEP] he bought a gallon [MASK] milk [SEP] Label: IsNext

<!-- field:instruments -->
## Strumenti e fonti dei dati

Modelli pre-addestrati su corpus di testo non etichettato (BooksCorpus e Wikipedia). Addestramento su 4 Cloud TPUs. Valutazione su benchmark standard (GLUE, SQuAD, MNLI, ecc.).

<!-- field:mainFindings -->
## Risultati principali

1. BERT ottiene nuovi risultati state-of-the-art su 11 compiti NLP. 2. Il punteggio GLUE viene spinto all'80.5% (miglioramento assoluto del 7.7%). 3. L'accuratezza su MultiNLI raggiunge l'86.7% (miglioramento assoluto del 4.6%). 4. L'F1 su SQuAD v1.1 è 93.2 e su SQuAD v2.0 è 83.1. 5. Il pre-addestramento bidirezionale allevia i vincoli di unidirezionalità che limitano i modelli precedenti.

<!-- field:conclusions -->
## Conclusioni

BERT dimostra che il pre-addestramento bidirezionale è fondamentale per le rappresentazioni linguistiche. Il modello unifica l'architettura per diversi compiti, riducendo l'ingegneria specifica per compito. I risultati empirici confermano che BERT è concettualmente semplice ma empiricamente potente, superando molti architetture specifiche per compito.

<!-- field:limitations -->
## Limiti

Il token [MASK] non appare durante il fine-tuning, creando una discrepanza tra pre-addestramento e fine-tuning (mitigata sostituendo il [MASK] con il token originale o un token casuale durante il pre-addestramento). Il dataset WNLI è escluso dal benchmark GLUE a causa di problemi nella sua costruzione. Le sequenze più lunghe sono sproporzionatamente costose in termini computazionali.

<!-- field:implications -->
## Implicazioni teoriche e pratiche

BERT offre un punto di partenza robusto per molti compiti NLP, riducendo la necessità di architetture complesse e ingegnerizzate. L'approccio di fine-tuning basato su BERT permette di ottenere prestazioni superiori su compiti di livello token (come QA) e frase (come NLI) rispetto agli approcci unidirezionali.

<!-- field:relevantData -->
## Dati rilevanti

GLUE Score: 80.5% (miglioramento del 7.7%); MultiNLI Accuracy: 86.7% (miglioramento del 4.6%); SQuAD v1.1 F1: 93.2 (miglioramento del 1.5); SQuAD v2.0 F1: 83.1 (miglioramento del 5.1); NSP Accuracy: 97%-98%.

<!-- field:relevantQuotes -->
## Citazioni rilevanti

['We introduce a new language representation model called BERT, which stands for Bidirectional Encoder Representations from Transformers.', 'Unlike recent language representation models, BERT is designed to pre-train deep bidirectional representations from unlabeled text by jointly conditioning on both left and right context in all layers.', 'BERT is conceptually simple and empirically powerful. It obtains new state-of-the-art results on eleven natural language processing tasks, including pushing the GLUE score to 80.5% (7.7% point absolute improvement).', 'The major limitation is that standard language models are unidirectional, and this limits the choice of architectures that can be used during pre-training.', 'In this paper, we improve the fine-tuning based approaches by proposing BERT: Bidirectional Encoder Representations from Transformers.', 'BERT alleviates the previously mentioned unidirectionality constraint by using a “masked language model” (MLM) pre-training objective, inspired by the Cloze task.']

<!-- field:personalNotes -->
## Note personali

_(vuoto)_
