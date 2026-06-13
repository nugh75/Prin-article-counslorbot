<!-- pdf_path: Prin-article-counslorbot/bibliography/pdf/1974_self_student-models-in-computer-aided-instruction.pdf -->
<!-- pdf_id: 6c2dc74d-bdc1-4a66-bd0a-a2ff62c700bc -->

# Scheda bibliografica

> Modifica solo il testo sotto ogni titolo. NON rimuovere i marcatori `<!-- field:... -->`.

<!-- field:title -->
## Titolo

Student Models in Computer-aided Instruction

<!-- field:authors -->
## Autori

JOHN A. SELF

<!-- field:year -->
## Anno

1974

<!-- field:publication -->
## Rivista / editore

Int. 3. Man-Machine Studies

<!-- field:volumeIssuePages -->
## Volume, fascicolo e pagine

6, 261-276

<!-- field:doi -->
## DOI

10.1016/0020-7373(74)80005-2

<!-- field:isbn -->
## ISBN

Non rilevato

<!-- field:url -->
## URL

Non rilevato

<!-- field:documentType -->
## Tipo di documento

Articolo scientifico

<!-- field:language -->
## Lingua originale

Inglese

<!-- field:citation -->
## Citazione bibliografica completa

Self, J. A. (1974). Student Models in Computer-aided Instruction. Int. 3. Man-Machine Studies, 6(261-276).

<!-- field:abstractIt -->
## Riassunto in italiano

L'articolo propone un modello dello studente per l'istruzione assistita da computer (CAI) basato su un insieme di programmi che rappresentano lo stato ipotizzato delle conoscenze dello studente. A differenza dei sistemi esistenti che utilizzano registri o reti semantiche, questo approccio procedurale permette di rappresentare esplicitamente le procedure di ragionamento dello studente. L'insegnamento procede attraverso una valutazione comparativa tra i programmi dello studente e dell'insegnante, mentre l'apprendimento è rappresentato dalla modifica diretta del modello dello studente. L'autore illustra l'implementazione di tale sistema, discutendo vantaggi, difficoltà teoriche e pratiche, e la generazione di feedback e domande basati sulla differenza tra le procedure dell'insegnante e dello studente.

<!-- field:abstractEn -->
## Abstract in English

The article proposes a student model for computer-aided instruction (CAI) based on a set of programs representing the hypothesized knowledge state of the student. Unlike existing systems using registers or semantic networks, this procedural approach explicitly represents the student's reasoning procedures. Teaching proceeds via comparative evaluation between student and teacher programs, while learning is represented by direct modification of the student model. The author illustrates the implementation of such a system, discussing advantages, theoretical and practical difficulties, and the generation of feedback and questions based on the difference between teacher and student procedures.

<!-- field:keywords -->
## Parole chiave

Computer-aided instruction, Student model, Procedural representation, Knowledge state, Teaching strategy

<!-- field:researchObjectives -->
## Obiettivi della ricerca

Arguire che i programmi CAI potrebbero sviluppare una rappresentazione più naturale del processo di insegnamento/apprendimento mantenendo un modello dello studente composto da un insieme di programmi che rappresentano lo stato ipotizzato delle conoscenze dello studente; illustrare la tecnica e chiarire vantaggi e svantaggi dell'approccio considerando un'implementazione di un tale programma di insegnamento.

<!-- field:researchQuestions -->
## Domande di ricerca

Come rappresentare lo stato delle conoscenze dello studente in modo naturale e comprensibile? Come facilitare l'implementazione di programmi di insegnamento efficaci attraverso un modello procedurale?

<!-- field:methodology -->
## Metodologia

Analisi teorica e implementazione pratica di un programma di insegnamento che mantiene un modello dello studente procedurale. Il sistema utilizza un linguaggio simile a PLANNER (estensione di LISP) per rappresentare fatti e teoremi (procedure di deduzione). Il dialogo didattico è generato confrontando il modello dell'insegnante (MT) con il modello dello studente (MS).

<!-- field:sample -->
## Campione / partecipanti

Dialogo didattico su clima e geografia (Fig. 1): Lo studente inizialmente associa 'più a nord' a 'più freddo'. L'insegnante introduce una contraddizione (Montana più a nord ma più freddo del Newfoundland) per far emergere l'errore concettuale dello studente. Lo studente modifica la propria procedura mentale includendo la variabile 'distanza dal mare'. Il sistema traccia questa evoluzione modificando il modello MS.

<!-- field:instruments -->
## Strumenti e fonti dei dati

Programma implementato su Leeds Modular One multi-access system. Linguaggi: PLANNER-like (estensione di LISP 1.5) e BCPL. Il sistema mantiene due basi di dati: MT (conoscenza dell'insegnante) e MS (modello dello studente).

<!-- field:mainFindings -->
## Risultati principali

1. Un modello dello studente espresso come insieme di procedure in un linguaggio di alto livello è più illuminante rispetto ai modelli basati su registri o reti semantiche.
2. L'approccio procedurale permette di generare feedback e domande pertinenti basati sulla differenza specifica tra le procedure dell'insegnante e dello studente.
3. L'equivalenza dei programmi e la rappresentazione dei processi di risoluzione dei problemi sono problemi essenziali della scienza del computer che il CAI deve affrontare.
4. Attualmente, tali sistemi non sono ancora economicamente efficaci a causa delle difficoltà teoriche e pratiche (es. analisi del linguaggio naturale, tassonomia degli errori).

<!-- field:conclusions -->
## Conclusioni

Il modello procedurale dello studente offre una rappresentazione più sofisticata dello stato delle conoscenze, permettendo un insegnamento più personalizzato. Tuttavia, esistono significative difficoltà teoriche e pratiche da superare prima che il CAI possa raggiungere pienamente i suoi obiettivi. L'intuizione che tutor computer più conoscitivi forniscano un'istruzione migliore non è ancora supportata da prove empiriche solide.

<!-- field:limitations -->
## Limiti

Mancanza di un componente di linguaggio naturale sofisticato; difficoltà nel determinare l'equivalenza dei programmi; tassonomia degli errori incompleta; mancanza di prove sperimentali che il modello procedurale sia una buona rappresentazione descrittiva; costi elevati che ne limitano l'efficacia economica nel breve termine.

<!-- field:implications -->
## Implicazioni teoriche e pratiche

Il modello procedurale suggerisce che l'insegnamento è un processo di modifica della base di conoscenze dello studente. Questo approccio ha implicazioni per la progettazione di linguaggi di programmazione orientati alla risoluzione di problemi e per la comprensione dei processi di problem-solving umano.

<!-- field:relevantData -->
## Dati rilevanti

261-276

<!-- field:relevantQuotes -->
## Citazioni rilevanti

In order to individualize instruction, a computer-aided instruction (CAI) program must maintain a 'student model', i.e. a representation of the hypothesized knowledge state of the student. We propose a student model consisting of a set of programs to represent the student's knowledge state. Teaching proceeds after a comparative evaluation of student and teacher programs, and learning is represented by direct modification of the student model.

<!-- field:personalNotes -->
## Note personali

_(vuoto)_
