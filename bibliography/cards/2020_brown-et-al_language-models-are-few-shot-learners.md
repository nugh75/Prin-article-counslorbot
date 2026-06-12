# Scheda bibliografica

## Titolo

Language Models are Few-Shot Learners

## Autori

Tom B. Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared Kaplan, Prafulla Dhariwal, Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, Sandhini Agarwal, Ariel Herbert-Voss, Gretchen Krueger, Tom Henighan, Rewon Child, Aditya Ramesh, Daniel M. Ziegler, Jeffrey Wu, Clemens Winter, Christopher Hesse, Mark Chen, Eric Sigler, Mateusz Litwin, Benjamin Chess, Jack Clark, Christopher Berner, Sam McCandlish, Alec Radford, Ilya Sutskever, Dario Amodei

## Anno

2020

## Rivista / editore

arXiv preprint arXiv:2005.14165

## DOI

10.48550/arXiv.2005.14165

## URL

https://arxiv.org/abs/2005.14165

## Tipo di documento

Preprint

## Riassunto in italiano

Questo lavoro dimostra che l'aumento della scala dei modelli linguistici migliora significativamente le prestazioni few-shot, talvolta raggiungendo o superando gli approcci state-of-the-art basati sul fine-tuning. Gli autori hanno addestrato GPT-3, un modello autoregressivo con 175 miliardi di parametri, e lo hanno testato in contest few-shot senza aggiornamenti dei gradienti. GPT-3 mostra prestazioni forti su compiti di NLP come traduzione, risposta a domande e ragionamento, generando anche articoli di notizie indistinguibili da quelli umani. Tuttavia, il paper identifica anche limiti, inclusi compiti di inferenza naturale e problemi di contaminazione dei dati derivanti dall'addestramento su grandi corpora web.

## Abstract in English

This work demonstrates that scaling up language models greatly improves few-shot performance, sometimes reaching competitiveness with prior state-of-the-art fine-tuning approaches. The authors trained GPT-3, an autoregressive language model with 175 billion parameters, and tested its performance in the few-shot setting without gradient updates. GPT-3 shows strong performance on NLP tasks such as translation, question-answering, and reasoning, and can generate news articles indistinguishable from human-written ones. However, the paper also identifies limitations, including struggles with natural language inference tasks and methodological issues related to training on large web corpora.

## Parole chiave

few-shot learning, language models, GPT-3, meta-learning, in-context learning, NLP benchmarks, data contamination

## Metodologia

Addestramento di GPT-3 (175B parametri) su un corpus web filtrato. Valutazione su oltre 20 dataset NLP standard (es. SuperGLUE, MMLU, TriviaQA) e compiti nuovi (es. calcolo aritmetico, unscrambling words). Test condotti in tre condizioni: zero-shot (solo istruzione), one-shot (un esempio), few-shot (10-100 esempi). Analisi sistematica della contaminazione dei dati confrontando i dati di addestramento con i set di test.

## Risultati principali

1. Le prestazioni few-shot migliorano drasticamente con la dimensione del modello. 2. GPT-3 compete o supera i modelli fine-tuned su molti dataset (es. 71.2% su TriviaQA few-shot vs state-of-the-art). 3. La contaminazione dei dati è minima per la maggior parte dei dataset, ma presente in alcuni casi specifici. 4. GPT-3 genera testo di alta qualità indistinguibile da quello umano. 5. Alcuni compiti (es. ANLI, RACE) rimangono difficili anche per GPT-3.

## Conclusioni

I modelli linguistici di grandi dimensioni possono apprendere nuovi compiti da pochi esempi senza fine-tuning, avvicinandosi alle capacità umane. Tuttavia, permangono sfide legate alla generalizzazione fuori distribuzione, alla contaminazione dei dati e ai bias. Il few-shot learning rappresenta un passo avanti significativo, ma richiede ancora ricerca per colmare il divario con l'intelligenza umana.