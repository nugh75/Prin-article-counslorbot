<!-- pdf_path: Prin-article-counslorbot/schede/pdfs/2017_vaswani-et-al_attention-is-all-you-need.pdf -->
<!-- pdf_id: e1616683-80a0-47ce-9ec3-d8f0d75bed68 -->

# Scheda bibliografica

> Modifica solo il testo sotto ogni titolo. NON rimuovere i marcatori `<!-- field:... -->`.

<!-- field:title -->
## Titolo

Attention Is All You Need

<!-- field:authors -->
## Autori

Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Łukasz Kaiser, Illia Polosukhin

<!-- field:year -->
## Anno

2017

<!-- field:publication -->
## Rivista / editore

31st Conference on Neural Information Processing Systems (NIPS 2017), Long Beach, CA, USA

<!-- field:volumeIssuePages -->
## Volume, fascicolo e pagine

pp. 5998–6008

<!-- field:doi -->
## DOI

10.48550/arXiv.1706.03762

<!-- field:isbn -->
## ISBN

Non rilevato

<!-- field:url -->
## URL

https://arxiv.org/abs/1706.03762

<!-- field:documentType -->
## Tipo di documento

Conference Paper

<!-- field:language -->
## Lingua originale

en

<!-- field:citation -->
## Citazione bibliografica completa

Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., Kaiser, Ł., & Polosukhin, I. (2017). Attention is all you need. In Advances in Neural Information Processing Systems 30 (pp. 5998-6008). Curran Associates, Inc.

<!-- field:abstractIt -->
## Riassunto in italiano

I modelli di trasduzione di sequenza dominanti si basano su reti neurali ricorrenti o convoluzionali complesse che includono un encoder e un decoder. I migliori modelli collegano anche encoder e decoder tramite un meccanismo di attenzione. Proponiamo una nuova architettura di rete semplice, il Transformer, basata esclusivamente su meccanismi di attenzione, eliminando completamente ricorrenza e convoluzioni. Sperimentazioni su due compiti di traduzione automatica mostrano che questi modelli sono superiori in qualità, più parallelizzabili e richiedono significativamente meno tempo per l'addestramento. Il nostro modello raggiunge un punteggio BLEU di 28.4 sul compito di traduzione inglese-tedesco WMT 2014, migliorando i risultati esistenti di oltre 2 BLEU. Sul compito inglese-francese WMT 2014, il nostro modello stabilisce un nuovo record singolo con un punteggio BLEU di 41.8 dopo 3.5 giorni di addestramento su otto GPU, una frazione dei costi di addestramento dei migliori modelli della letteratura. Dimostriamo che il Transformer si generalizza bene ad altri compiti applicandolo con successo all'analisi costitutiva dell'inglese sia con grandi che con dati di addestramento limitati.

<!-- field:abstractEn -->
## Abstract in English

The dominant sequence transduction models are based on complex recurrent or convolutional neural networks that include an encoder and a decoder. The best performing models also connect the encoder and decoder through an attention mechanism. We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely. Experiments on two machine translation tasks show these models to be superior in quality while being more parallelizable and requiring significantly less time to train. Our model achieves 28.4 BLEU on the WMT 2014 English-to-German translation task, improving over the existing best results, including ensembles, by over 2 BLEU. On the WMT 2014 English-to-French translation task, our model establishes a new single-model state-of-the-art BLEU score of 41.8 after training for 3.5 days on eight GPUs, a small fraction of the training costs of the best models from the literature. We show that the Transformer generalizes well to other tasks by applying it successfully to English constituency parsing both with large and limited training data.

<!-- field:keywords -->
## Parole chiave

Transformer, Attention Mechanism, Machine Translation, Sequence-to-Sequence Learning, Neural Machine Translation, Self-Attention, Encoder-Decoder

<!-- field:researchObjectives -->
## Obiettivi della ricerca

Proporre un'architettura di rete neurale basata esclusivamente su meccanismi di attenzione (Transformer) per sostituire le architetture ricorrenti e convoluzionali nei compiti di trasduzione di sequenza, migliorando la qualità della traduzione, la parallelizzazione e riducendo i tempi di addestramento.

<!-- field:researchQuestions -->
## Domande di ricerca

È possibile costruire un modello di trasduzione di sequenza efficace basandosi esclusivamente su meccanismi di attenzione, eliminando ricorrenza e convoluzioni? Il Transformer può raggiungere o superare lo stato dell'arte in compiti di traduzione automatica?

<!-- field:methodology -->
## Metodologia

L'architettura del Transformer utilizza stack di layer identici per encoder e decoder, composti da meccanismi di attenzione multi-testa e reti feed-forward fully connected punto-per-punto. L'attenzione scalata prodotto-punto e l'attenzione multi-testa permettono di modellare dipendenze globali. Vengono utilizzati codifiche posizionali sinusoidali. Il modello è addestrato su dataset WMT 2014 (inglese-tedesco e inglese-francese) utilizzando ottimizzatore Adam su GPU NVIDIA P100.

<!-- field:sample -->
## Campione / partecipanti

The Transformer allows for significantly more parallelization and can reach a new state of the art in translation quality after being trained for as little as twelve hours on eight P100 GPUs.

<!-- field:instruments -->
## Strumenti e fonti dei dati

NVIDIA P100 GPUs, Adam optimizer, byte-pair encoding, sinusoidal positional encodings

<!-- field:mainFindings -->
## Risultati principali

Il modello Transformer supera i modelli basati su RNN e convoluzioni in termini di qualità della traduzione (BLEU) e velocità di addestramento. L'architettura permette una parallelizzazione significativa. I meccanismi di attenzione multi-testa permettono di catturare diverse relazioni semantiche e sintattiche. Le codifiche posizionali sinusoidali permettono una buona generalizzazione a lunghezze di sequenza non viste durante l'addestramento.

<!-- field:conclusions -->
## Conclusioni

Il Transformer rappresenta un avanzamento significativo rispetto alle architetture basate su ricorrenza o convoluzioni, raggiungendo lo stato dell'arte in compiti di traduzione automatica con tempi di addestramento ridotti. L'architettura è promettente per l'applicazione ad altri compiti e modalità non testuali.

<!-- field:limitations -->
## Limiti

Il modello richiede una quantità significativa di dati per l'addestramento. L'uso di codifiche posizionali fisse potrebbe limitare la capacità di generalizzare a lunghezze di sequenza molto diverse da quelle di addestramento (sebbene le sinusoidali aiutino).

<!-- field:implications -->
## Implicazioni teoriche e pratiche

L'architettura Transformer ha rivoluzionato il campo del machine translation e dell'elaborazione del linguaggio naturale, diventando la base per modelli successivi come BERT e GPT.

<!-- field:relevantData -->
## Dati rilevanti

WMT 2014 English-German: ~4.5M sentence pairs, 37000 tokens vocabulary. WMT 2014 English-French: 36M sentences, 32000 word-piece vocabulary. Training: 8 P100 GPUs, 12 hours (base), 3.5 days (big). BLEU scores: 28.4 (En-De), 41.8 (En-Fr).

<!-- field:relevantQuotes -->
## Citazioni rilevanti

The Transformer allows for significantly more parallelization and can reach a new state of the art in translation quality after being trained for as little as twelve hours on eight P100 GPUs. (p. 1)

<!-- field:personalNotes -->
## Note personali

_(vuoto)_
