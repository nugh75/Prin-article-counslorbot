# Scheda bibliografica

## Titolo

Evaluating Large Language Models Trained on Code

## Autori

Mark Chen, Jerry Tworek, Heewoo Jun, Qiming Yuan, Henrique Ponde de Oliveira Pinto, Jared Kaplan, Harri Edwards, Yuri Burda, Nicholas Joseph, Greg Brockman, Alex Ray, Raul Puri, Gretchen Krueger, Michael Petrov, Heidy Khlaaf, Girish Sastry, Pamela Mishkin, Brooke Chan, Scott Gray, Nick Ryder, Mikhail Pavlov, Alethea Power, Lukasz Kaiser, Mohammad Bavarian, Clemens Winter, Philippe Tillet, Felipe Petroski Such, Dave Cummings, Matthias Plappert, Fotios Chantzis, Elizabeth Barnes, Ariel Herbert-Voss, William Hebgen Guss, Alex Nichol, Alex Paino, Nikolas Tezak, Jie Tang, Igor Babuschkin, Suchir Balaji, Shantanu Jain, William Saunders, Christopher Hesse, Andrew N. Carr, Jan Leike, Josh Achiam, Vedant Misra, Evan Morikawa, Alec Radford, Matthew Knight, Miles Brundage, Mira Murati, Katie Mayer, Peter Welinder, Bob McGrew, Dario Amodei, Sam McCandlish, Ilya Sutskever, Wojciech Zaremba

## Anno

2021

## Rivista / editore

Proceedings of the International Conference on Machine Learning 2021

## DOI

arXiv:2107.03374v2

## URL

https://www.github.com/openai/human-eval

## Tipo di documento

Proceedings

## Riassunto in italiano

L'autori introducono Codex, un modello linguistico GPT affinato su codice pubblico disponibile su GitHub, e ne valutano le capacità di scrittura in Python. Su HumanEval, un nuovo set di valutazione per misurare la correttezza funzionale nella sintesi di programmi da docstring, il loro modello risolve il 28,8% dei problemi, contro lo 0% di GPT-3 e l'11,4% di GPT-J. Inoltre, trovano che il campionamento ripetuto dal modello è una strategia sorprendentemente efficace per produrre soluzioni funzionanti per prompt difficili: con 100 campioni per problema, risolvono il 70,2% dei problemi. L'articolo discute anche le limitazioni del modello, tra cui difficoltà con docstring che descrivono lunghe catene di operazioni e vincoli di legame alle variabili, e affronta gli impatti più ampi del dispiegamento di tecnologie di generazione codice, coprendo sicurezza, economia e implicazioni sociali.

## Abstract in English

The authors introduce Codex, a GPT language model fine-tuned on publicly available code from GitHub, and study its Python code-writing capabilities. On HumanEval, a new evaluation set we release to measure functional correctness for synthesizing programs from docstrings, our model solves 28.8% of the problems, while GPT-3 solves 0% and GPT-J solves 11.4%. Furthermore, we find that repeated sampling from the model is a surprisingly effective strategy for producing working solutions to difficult prompts. Using this method, we solve 70.2% of our problems with 100 samples per problem. Careful investigation of our model reveals its limitations, including difficulty with docstrings describing long chains of operations and with binding operations to variables. Finally, we discuss the potential broader impacts of deploying powerful code generation technologies, covering safety, security, and economics.

## Parole chiave

Machine Learning, ICML, Code Generation, Large Language Models, HumanEval, GitHub Copilot

## Metodologia

Gli autori creano HumanEval, un set di 164 problemi di programmazione scritti a mano con unit test. Addestrano e affinano modelli Codex (fino a 12B parametri) su codice Python da GitHub. Utilizzano un ambiente sandbox (gVisor) per eseguire in sicurezza il codice generato. Valutano la correttezza funzionale tramite pass@k, generando fino a 100 campioni per problema e selezionando quello con la massima probabilità log media o che passa i test. Analizzano anche la generazione di codice insicuro (es. chiavi crittografiche deboli).

## Risultati principali

1. Codex risolve il 28,8% dei problemi con un singolo campione, il 37,7% con Codex-S (affinato su funzioni corrette) e il 70,2% con 100 campioni. 2. Il campionamento ripetuto è efficace: il campione con la massima probabilità log media risolve il 44,5% dei problemi, mentre quello che passa i test risolve il 77,5%. 3. GPT-3 risolve lo 0% e GPT-J l'11,4%. 4. Codex genera codice insicuro in alcuni casi (es. chiavi RSA < 2048 bit, modalità ECB per AES). 5. La generazione di codice potrebbe influenzare il mercato del lavoro, riducendo i costi ma anche creando rischi di dislocamento o dipendenza da pacchetti specifici.

## Conclusioni

Codex dimostra capacità significative nella sintesi di codice Python, superando modelli generici come GPT-3 e GPT-J. Tuttavia, presenta limitazioni nella gestione di compiti complessi e nella sicurezza. L'adozione di tali tecnologie richiede monitoraggio attento per mitigare rischi di sicurezza e considerare gli impatti socioeconomici.