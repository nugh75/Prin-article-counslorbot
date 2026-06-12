# Scheda bibliografica

## Titolo

Attention Is All You Need

## Autori

Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Łukasz Kaiser, Illia Polosukhin

## Anno

2017

## Rivista / editore

31st Conference on Neural Information Processing Systems (NIPS 2017), Long Beach, CA, USA

## DOI

10.48550/arXiv.1706.03762

## URL

https://arxiv.org/abs/1706.03762

## Tipo di documento

Conference Paper

## Riassunto in italiano

I modelli di trasduzione di sequenza dominanti si basano su reti neurali ricorrenti o convoluzionali complesse che includono un encoder e un decoder. I migliori modelli collegano anche encoder e decoder tramite un meccanismo di attenzione. Proponiamo una nuova architettura di rete semplice, il Transformer, basata esclusivamente su meccanismi di attenzione, eliminando completamente ricorrenza e convoluzioni. Sperimentazioni su due compiti di traduzione automatica mostrano che questi modelli sono superiori in qualità, più parallelizzabili e richiedono significativamente meno tempo per l'addestramento. Il nostro modello raggiunge un punteggio BLEU di 28.4 sul compito di traduzione inglese-tedesco WMT 2014, migliorando i risultati esistenti di oltre 2 BLEU. Sul compito inglese-francese WMT 2014, il nostro modello stabilisce un nuovo record singolo con un punteggio BLEU di 41.8 dopo 3.5 giorni di addestramento su otto GPU, una frazione dei costi di addestramento dei migliori modelli della letteratura. Dimostriamo che il Transformer si generalizza bene ad altri compiti applicandolo con successo all'analisi costitutiva dell'inglese sia con grandi che con dati di addestramento limitati.

## Abstract in English

The dominant sequence transduction models are based on complex recurrent or convolutional neural networks that include an encoder and a decoder. The best performing models also connect the encoder and decoder through an attention mechanism. We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely. Experiments on two machine translation tasks show these models to be superior in quality while being more parallelizable and requiring significantly less time to train. Our model achieves 28.4 BLEU on the WMT 2014 English-to-German translation task, improving over the existing best results, including ensembles, by over 2 BLEU. On the WMT 2014 English-to-French translation task, our model establishes a new single-model state-of-the-art BLEU score of 41.8 after training for 3.5 days on eight GPUs, a small fraction of the training costs of the best models from the literature. We show that the Transformer generalizes well to other tasks by applying it successfully to English constituency parsing both with large and limited training data.

## Parole chiave

Transformer, Attention Mechanism, Machine Translation, Sequence-to-Sequence Learning, Neural Machine Translation, Self-Attention, Encoder-Decoder

## Metodologia

L'architettura del Transformer utilizza stack di layer identici per encoder e decoder, composti da meccanismi di attenzione multi-testa e reti feed-forward fully connected punto-per-punto. L'attenzione scalata prodotto-punto e l'attenzione multi-testa permettono di modellare dipendenze globali. Vengono utilizzati codifiche posizionali sinusoidali. Il modello è addestrato su dataset WMT 2014 (inglese-tedesco e inglese-francese) utilizzando ottimizzatore Adam su GPU NVIDIA P100.

## Risultati principali

Il modello Transformer supera i modelli basati su RNN e convoluzioni in termini di qualità della traduzione (BLEU) e velocità di addestramento. L'architettura permette una parallelizzazione significativa. I meccanismi di attenzione multi-testa permettono di catturare diverse relazioni semantiche e sintattiche. Le codifiche posizionali sinusoidali permettono una buona generalizzazione a lunghezze di sequenza non viste durante l'addestramento.

## Conclusioni

Il Transformer rappresenta un avanzamento significativo rispetto alle architetture basate su ricorrenza o convoluzioni, raggiungendo lo stato dell'arte in compiti di traduzione automatica con tempi di addestramento ridotti. L'architettura è promettente per l'applicazione ad altri compiti e modalità non testuali.