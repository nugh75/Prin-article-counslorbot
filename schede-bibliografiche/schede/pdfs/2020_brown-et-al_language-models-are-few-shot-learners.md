<!-- pdf_path: Prin-article-counslorbot/schede/pdfs/2020_brown-et-al_language-models-are-few-shot-learners.pdf -->
<!-- pdf_id: 5f08a5ae-cfe2-4cb3-accc-938b6841ed63 -->

# Scheda bibliografica

> Modifica solo il testo sotto ogni titolo. NON rimuovere i marcatori `<!-- field:... -->`.

<!-- field:title -->
## Titolo

Language Models are Few-Shot Learners

<!-- field:authors -->
## Autori

Tom B. Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared Kaplan, Prafulla Dhariwal, Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, Sandhini Agarwal, Ariel Herbert-Voss, Gretchen Krueger, Tom Henighan, Rewon Child, Aditya Ramesh, Daniel M. Ziegler, Jeffrey Wu, Clemens Winter, Christopher Hesse, Mark Chen, Eric Sigler, Mateusz Litwin, Benjamin Chess, Jack Clark, Christopher Berner, Sam McCandlish, Alec Radford, Ilya Sutskever, Dario Amodei

<!-- field:year -->
## Anno

2020

<!-- field:publication -->
## Rivista / editore

arXiv preprint arXiv:2005.14165

<!-- field:volumeIssuePages -->
## Volume, fascicolo e pagine

arXiv:2005.14165v4

<!-- field:doi -->
## DOI

10.48550/arXiv.2005.14165

<!-- field:isbn -->
## ISBN

Non rilevato

<!-- field:url -->
## URL

https://arxiv.org/abs/2005.14165

<!-- field:documentType -->
## Tipo di documento

Preprint

<!-- field:language -->
## Lingua originale

English

<!-- field:citation -->
## Citazione bibliografica completa

Brown, T. B., Mann, B., Ryder, N., Subbiah, M., Kaplan, J., Dhariwal, P., ... & Amodei, D. (2020). Language models are few-shot learners. arXiv preprint arXiv:2005.14165.

<!-- field:abstractIt -->
## Riassunto in italiano

Questo lavoro dimostra che l'aumento della scala dei modelli linguistici migliora significativamente le prestazioni few-shot, talvolta raggiungendo o superando gli approcci state-of-the-art basati sul fine-tuning. Gli autori hanno addestrato GPT-3, un modello autoregressivo con 175 miliardi di parametri, e lo hanno testato in contest few-shot senza aggiornamenti dei gradienti. GPT-3 mostra prestazioni forti su compiti di NLP come traduzione, risposta a domande e ragionamento, generando anche articoli di notizie indistinguibili da quelli umani. Tuttavia, il paper identifica anche limiti, inclusi compiti di inferenza naturale e problemi di contaminazione dei dati derivanti dall'addestramento su grandi corpora web.

<!-- field:abstractEn -->
## Abstract in English

This work demonstrates that scaling up language models greatly improves few-shot performance, sometimes reaching competitiveness with prior state-of-the-art fine-tuning approaches. The authors trained GPT-3, an autoregressive language model with 175 billion parameters, and tested its performance in the few-shot setting without gradient updates. GPT-3 shows strong performance on NLP tasks such as translation, question-answering, and reasoning, and can generate news articles indistinguishable from human-written ones. However, the paper also identifies limitations, including struggles with natural language inference tasks and methodological issues related to training on large web corpora.

<!-- field:keywords -->
## Parole chiave

few-shot learning, language models, GPT-3, meta-learning, in-context learning, NLP benchmarks, data contamination

<!-- field:researchObjectives -->
## Obiettivi della ricerca

Valutare le capacità di apprendimento few-shot di un modello linguistico di grandi dimensioni (GPT-3) confrontando le prestazioni zero-shot, one-shot e few-shot su una vasta gamma di dataset NLP e compiti nuovi, analizzando l'impatto della dimensione del modello e del numero di esempi in contesto, e studiando i problemi di contaminazione dei dati.

<!-- field:researchQuestions -->
## Domande di ricerca

1. Come scala la performance few-shot con la dimensione del modello? 2. GPT-3 può competere con i modelli fine-tuned state-of-the-art in contest few-shot? 3. Quali dataset mostrano contaminazione dei dati significativa? 4. Quali sono i limiti attuali del few-shot learning nei modelli linguistici?

<!-- field:methodology -->
## Metodologia

Addestramento di GPT-3 (175B parametri) su un corpus web filtrato. Valutazione su oltre 20 dataset NLP standard (es. SuperGLUE, MMLU, TriviaQA) e compiti nuovi (es. calcolo aritmetico, unscrambling words). Test condotti in tre condizioni: zero-shot (solo istruzione), one-shot (un esempio), few-shot (10-100 esempi). Analisi sistematica della contaminazione dei dati confrontando i dati di addestramento con i set di test.

<!-- field:sample -->
## Campione / partecipanti

GPT-3 (175 miliardi di parametri). Modelli più piccoli (da 125M a 13B parametri) usati per studi di scaling.

<!-- field:instruments -->
## Strumenti e fonti dei dati

Dataset NLP: SuperGLUE, MMLU, TriviaQA, CoQA, Natural Questions, ANLI, RACE, QuAC, Winograd Schema, ecc. Metriche: Accuratezza, F1 score, BLEU. Strumenti di valutazione umana per articoli generati.

<!-- field:mainFindings -->
## Risultati principali

1. Le prestazioni few-shot migliorano drasticamente con la dimensione del modello. 2. GPT-3 compete o supera i modelli fine-tuned su molti dataset (es. 71.2% su TriviaQA few-shot vs state-of-the-art). 3. La contaminazione dei dati è minima per la maggior parte dei dataset, ma presente in alcuni casi specifici. 4. GPT-3 genera testo di alta qualità indistinguibile da quello umano. 5. Alcuni compiti (es. ANLI, RACE) rimangono difficili anche per GPT-3.

<!-- field:conclusions -->
## Conclusioni

I modelli linguistici di grandi dimensioni possono apprendere nuovi compiti da pochi esempi senza fine-tuning, avvicinandosi alle capacità umane. Tuttavia, permangono sfide legate alla generalizzazione fuori distribuzione, alla contaminazione dei dati e ai bias. Il few-shot learning rappresenta un passo avanti significativo, ma richiede ancora ricerca per colmare il divario con l'intelligenza umana.

<!-- field:limitations -->
## Limiti

Il paper ammette che alcuni dataset potrebbero essere contaminati dai dati di addestramento, rendendo le prestazioni sovrastimate. Inoltre, GPT-3 fatica su compiti di inferenza logica complessa (es. ANLI) e su alcuni dataset di reading comprehension. L'analisi dei bias e dell'impatto sociale è preliminare.

<!-- field:implications -->
## Implicazioni teoriche e pratiche

Il successo di GPT-3 nel few-shot learning ha implicazioni per l'uso pratico dei modelli linguistici, riducendo la necessità di grandi dataset etichettati per ogni nuovo compito. Tuttavia, la contaminazione dei dati e i bias sollevano preoccupazioni etiche e metodologiche che devono essere affrontate prima del deployment su larga scala.

<!-- field:relevantData -->
## Dati rilevanti

GPT-3 achieves 81.5 F1 on CoQA in the zero-shot setting, 84.0 F1 on CoQA in the one-shot setting, 85.0 F1 in the few-shot setting. Similarly, GPT-3 achieves 64.3% accuracy on TriviaQA in the zero-shot setting, 68.0% in the one-shot setting, and 71.2% in the few-shot setting, the last of which is state-of-the-art relative to fine-tuned models operating in the same closed-book setting.

<!-- field:relevantQuotes -->
## Citazioni rilevanti

By contrast, humans can generally perform a new language task from only a few examples or from simple instructions – something which current NLP systems still largely struggle to do.

<!-- field:personalNotes -->
## Note personali

_(vuoto)_
