<!-- pdf_path: Prin-article-counslorbot/bibliography/pdf/2021_chen-et-al_evaluating-large-language-models-trained-on-code.pdf -->
<!-- pdf_id: 21054511-9f17-4c31-9c7d-32cd553e6018 -->

# Scheda bibliografica

> Modifica solo il testo sotto ogni titolo. NON rimuovere i marcatori `<!-- field:... -->`.

<!-- field:title -->
## Titolo

Evaluating Large Language Models Trained on Code

<!-- field:authors -->
## Autori

Mark Chen, Jerry Tworek, Heewoo Jun, Qiming Yuan, Henrique Ponde de Oliveira Pinto, Jared Kaplan, Harri Edwards, Yuri Burda, Nicholas Joseph, Greg Brockman, Alex Ray, Raul Puri, Gretchen Krueger, Michael Petrov, Heidy Khlaaf, Girish Sastry, Pamela Mishkin, Brooke Chan, Scott Gray, Nick Ryder, Mikhail Pavlov, Alethea Power, Lukasz Kaiser, Mohammad Bavarian, Clemens Winter, Philippe Tillet, Felipe Petroski Such, Dave Cummings, Matthias Plappert, Fotios Chantzis, Elizabeth Barnes, Ariel Herbert-Voss, William Hebgen Guss, Alex Nichol, Alex Paino, Nikolas Tezak, Jie Tang, Igor Babuschkin, Suchir Balaji, Shantanu Jain, William Saunders, Christopher Hesse, Andrew N. Carr, Jan Leike, Josh Achiam, Vedant Misra, Evan Morikawa, Alec Radford, Matthew Knight, Miles Brundage, Mira Murati, Katie Mayer, Peter Welinder, Bob McGrew, Dario Amodei, Sam McCandlish, Ilya Sutskever, Wojciech Zaremba

<!-- field:year -->
## Anno

2021

<!-- field:publication -->
## Rivista / editore

Proceedings of the International Conference on Machine Learning 2021

<!-- field:volumeIssuePages -->
## Volume, fascicolo e pagine

Pagine 1-35

<!-- field:doi -->
## DOI

arXiv:2107.03374v2

<!-- field:isbn -->
## ISBN

Non rilevato

<!-- field:url -->
## URL

https://www.github.com/openai/human-eval

<!-- field:documentType -->
## Tipo di documento

Proceedings

<!-- field:language -->
## Lingua originale

Inglese

<!-- field:citation -->
## Citazione bibliografica completa

Chen, M., Tworek, J., Jun, H., Yuan, Q., Pinto, H. P. d. O., Kaplan, J., Edwards, H., Burda, Y., Joseph, N., Brockman, G., Ray, A., Puri, R., Krueger, G., Petrov, M., Khlaaf, H., Sastry, G., Mishkin, P., Chan, B., Gray, S., Ryder, N., Pavlov, M., Power, A., Kaiser, L., Bavarian, M., Winter, C., Tillet, P., Such, F. P., Cummings, D., Plappert, M., Chantzis, F., Barnes, E., Herbert-Voss, A., Guss, W. H., Nichol, A., Paino, A., Tezak, N., Tang, J., Babuschkin, I., Balaji, S., Jain, S., Saunders, W., Hesse, C., Carr, A. N., Leike, J., Achiam, J., Misra, V., Morikawa, E., Radford, A., Knight, M., Brundage, M., Murati, M., Mayer, K., Welinder, P., McGrew, B., Amodei, D., McCandlish, S., Sutskever, I., & Zaremba, W. (2021). Evaluating Large Language Models Trained on Code. Proceedings of the International Conference on Machine Learning 2021.

<!-- field:abstractIt -->
## Riassunto in italiano

L'autori introducono Codex, un modello linguistico GPT affinato su codice pubblico disponibile su GitHub, e ne valutano le capacità di scrittura in Python. Su HumanEval, un nuovo set di valutazione per misurare la correttezza funzionale nella sintesi di programmi da docstring, il loro modello risolve il 28,8% dei problemi, contro lo 0% di GPT-3 e l'11,4% di GPT-J. Inoltre, trovano che il campionamento ripetuto dal modello è una strategia sorprendentemente efficace per produrre soluzioni funzionanti per prompt difficili: con 100 campioni per problema, risolvono il 70,2% dei problemi. L'articolo discute anche le limitazioni del modello, tra cui difficoltà con docstring che descrivono lunghe catene di operazioni e vincoli di legame alle variabili, e affronta gli impatti più ampi del dispiegamento di tecnologie di generazione codice, coprendo sicurezza, economia e implicazioni sociali.

<!-- field:abstractEn -->
## Abstract in English

The authors introduce Codex, a GPT language model fine-tuned on publicly available code from GitHub, and study its Python code-writing capabilities. On HumanEval, a new evaluation set we release to measure functional correctness for synthesizing programs from docstrings, our model solves 28.8% of the problems, while GPT-3 solves 0% and GPT-J solves 11.4%. Furthermore, we find that repeated sampling from the model is a surprisingly effective strategy for producing working solutions to difficult prompts. Using this method, we solve 70.2% of our problems with 100 samples per problem. Careful investigation of our model reveals its limitations, including difficulty with docstrings describing long chains of operations and with binding operations to variables. Finally, we discuss the potential broader impacts of deploying powerful code generation technologies, covering safety, security, and economics.

<!-- field:keywords -->
## Parole chiave

Machine Learning, ICML, Code Generation, Large Language Models, HumanEval, GitHub Copilot

<!-- field:researchObjectives -->
## Obiettivi della ricerca

Valutare le capacità di generazione di codice di modelli linguistici su larga scala (Codex) su un set di dati manuale (HumanEval) e analizzare le implicazioni di sicurezza ed economica di tali tecnologie.

<!-- field:researchQuestions -->
## Domande di ricerca

1. Quale percentuale di problemi di sintesi di codice da docstring può essere risolta da Codex rispetto a GPT-3 e GPT-J? 2. Qual è l'efficacia del campionamento ripetuto (pass@k) nel migliorare le prestazioni? 3. Quali sono le limitazioni intrinseche di Codex (es. gestione di docstring complesse)? 4. Quali sono i rischi di sicurezza ed economici associati alla generazione di codice?

<!-- field:methodology -->
## Metodologia

Gli autori creano HumanEval, un set di 164 problemi di programmazione scritti a mano con unit test. Addestrano e affinano modelli Codex (fino a 12B parametri) su codice Python da GitHub. Utilizzano un ambiente sandbox (gVisor) per eseguire in sicurezza il codice generato. Valutano la correttezza funzionale tramite pass@k, generando fino a 100 campioni per problema e selezionando quello con la massima probabilità log media o che passa i test. Analizzano anche la generazione di codice insicuro (es. chiavi crittografiche deboli).

<!-- field:sample -->
## Campione / partecipanti

164 problemi di programmazione (HumanEval)

<!-- field:instruments -->
## Strumenti e fonti dei dati

Modelli linguistici Codex (fino a 12B parametri), GPT-3, GPT-J; Ambiente sandbox gVisor; Metrica pass@k; Unit test;

<!-- field:mainFindings -->
## Risultati principali

1. Codex risolve il 28,8% dei problemi con un singolo campione, il 37,7% con Codex-S (affinato su funzioni corrette) e il 70,2% con 100 campioni. 2. Il campionamento ripetuto è efficace: il campione con la massima probabilità log media risolve il 44,5% dei problemi, mentre quello che passa i test risolve il 77,5%. 3. GPT-3 risolve lo 0% e GPT-J l'11,4%. 4. Codex genera codice insicuro in alcuni casi (es. chiavi RSA < 2048 bit, modalità ECB per AES). 5. La generazione di codice potrebbe influenzare il mercato del lavoro, riducendo i costi ma anche creando rischi di dislocamento o dipendenza da pacchetti specifici.

<!-- field:conclusions -->
## Conclusioni

Codex dimostra capacità significative nella sintesi di codice Python, superando modelli generici come GPT-3 e GPT-J. Tuttavia, presenta limitazioni nella gestione di compiti complessi e nella sicurezza. L'adozione di tali tecnologie richiede monitoraggio attento per mitigare rischi di sicurezza e considerare gli impatti socioeconomici.

<!-- field:limitations -->
## Limiti

Il set di valutazione HumanEval è composto da problemi scritti a mano, che potrebbero non rappresentare tutti i tipi di codice reale. L'analisi della sicurezza si basa su un numero limitato di vulnerabilità (RSA, AES). Gli impatti economici sono ancora preliminari e richiedono ulteriori studi.

<!-- field:implications -->
## Implicazioni teoriche e pratiche

La generazione di codice può aumentare la produttività degli sviluppatori, ma introduce rischi di sicurezza (codice insicuro) e potenziali effetti sul mercato del lavoro (dislocamento di ruoli, cambiamenti nelle dinamiche di potere). È necessario un monitoraggio continuo e ricerche future per comprendere meglio gli impatti a lungo termine.

<!-- field:relevantData -->
## Dati rilevanti

Codex (12B parametri): 28,8% di problemi risolti con 1 campione; 44,5% con 100 campioni (massima probabilità log); 77,5% con 100 campioni (passa i test). Codex-S: 37,7% con 1 campione. GPT-3: 0%. GPT-J: 11,4%. Dataset: 164 problemi, 7,7 test medi per problema.

<!-- field:relevantQuotes -->
## Citazioni rilevanti

• "On HumanEval, a new evaluation set we release to measure functional correctness for synthesizing programs from docstrings, our model solves 28.8% of the problems, while GPT-3 solves 0% and GPT-J solves 11.4%." (p. 1)
• "Furthermore, we find that repeated sampling from the model is a surprisingly effective strategy for producing working solutions to difficult prompts. Using this method, we solve 70.2% of our problems with 100 samples per problem." (p. 1)
• "We conclude by discussing the limitations and potential broader impacts of these Codex models and of increasingly powerful code generating models more generally." (p. 1)
• "A simple mental model is that Codex can pick up 'bad habits' from its training data." (p. 23)
• "Code generation could help create economic value by allowing engineers and programmers to write better code, write faster, and help with tasks like docstrings, documentation, tests, code reviews, etc." (p. 23)

<!-- field:personalNotes -->
## Note personali

_(vuoto)_
