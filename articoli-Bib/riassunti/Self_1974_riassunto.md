# Riassunto — Self (1974) "Student Models in Computer-aided Instruction"

## Riferimento
Self, J. A. (1974). Student models in computer-aided instruction. *International Journal of Man-Machine Studies*, 6(2), 261–276.

## Tesi centrale
Un programma di istruzione assistita da computer (CAI) deve mantenere un **modello dello studente** (student model, Ms): una rappresentazione dello stato di conoscenza ipotizzato dello studente. Self propone che questo modello sia costituito da un **insieme di programmi** (invece che da semplici registri o tag), per rappresentare in modo più naturale e trasparente il processo di insegnamento/apprendimento.

## Struttura dell'articolo

### 1. Introduzione
La conoscenza che determina le prestazioni di un programma didattico si classifica in tre tipi:
- **(a)** conoscenza di *come insegnare* (strategie didattiche)
- **(b)** conoscenza di *ciò che viene insegnato* (dominio)
- **(c)** conoscenza di *chi viene insegnato* (modello dello studente)

Solo il tipo (c) è specificamente rilevante per l'individualizzazione. Self definisce il modello dello studente come un oggetto Ms che permette a un osservatore O (insegnante umano o programma) di rispondere alla domanda: "Qual è lo stato di conoscenza attuale dello studente S?"

### 2. Survey dei modelli di studente esistenti
I sistemi CAI esistenti usano principalmente:
- **Registri modificabili** (sistemi author-language): memorizzano contatori e valori che determinano il branching
- **Tag in reti semantiche** (Carbonell 1970, Wexler 1970, Brown et al. 1972): indicatori inseriti nella rete di conoscenza per tracciare cosa è stato chiesto o appreso

Self critica questi approcci perché:
- I registri non si riferiscono direttamente alla conoscenza di tipo (b)
- Le reti semantiche hanno meccanismi di interpretazione diversi tra loro
- La teoria psicologica delle reti semantiche non spiega i tempi di risposta quando l'informazione è contraddetta o assente

### 3. Modello procedurale dello studente
Self propone che la conoscenza di tipo (c) sia rappresentata come un **insieme di programmi**: le risposte previste da questi programmi dovrebbero coincidere con quelle dello studente. Quando lo studente apprende, il modello Ms viene modificato (avvicinandosi alle procedure corrispondenti della conoscenza di tipo (b)).

### 4. Sistemi di conoscenza
L'articolo discute il dibattito tra rappresentazione della conoscenza come **dati** (reti semantiche) vs **programmi**. Self sostiene che questa distinzione è illusoria: ciò che conta è come la rete viene interpretata. Propone la tesi del "procedural embedding of knowledge" (Hewitt 1972): le strutture intellettuali vanno analizzate attraverso i loro analoghi procedurali.

### 5. Implementazione
Self descrive un'implementazione basata su un linguaggio PLANNER-like con **database multipli**:
- **MT** (teacher): conoscenza dell'insegnante (fatti + teoremi)
- **MS** (student): modello dello studente (conoscenza ipotizzata)

L'insegnamento procede per **contraddizione**: il sistema cerca discrepanze tra MT e MS, genera domande che rivelano "bug" nelle procedure dello studente, e modifica MS man mano che lo studente apprende.

Viene presentato un dialogo esemplificativo (Fig. 1) sull'insegnamento di relazioni geografiche (temperatura, latitudine, distanza dall'oceano), con la traduzione in codice del meccanismo di generazione delle domande (Fig. 2).

### 6. Feedback, difficoltà e obiettivi
- **Feedback**: il tracciamento delle procedure errate dello studente (invece di trace generici) permette un feedback mirato
- **Difficoltà**: va definita in base alla complessità delle procedure nel modello dello studente, non solo in base alla conoscenza di dominio
- **Obiettivi**: espressi come stati desiderati del modello dello studente, usando lo stesso formalismo goal-oriented della conoscenza di tipo (b)

### 7. Critiche anticipate
Self discute cinque critiche:
- **(a)** Le procedure presentate sono semplificate — ma il punto è il principio, non il dominio specifico
- **(b)** Manca una componente di linguaggio naturale — ma un modello procedurale è un prerequisito minimo per una comunicazione efficace
- **(c)** Il confronto tra programmi (equivalenza) è un problema aperto — ma è ciò che l'insegnamento richiede
- **(d)** La tassonomia degli errori è incompleta — va sviluppata
- **(e)** Manca evidenza sperimentale che un modello procedurale sia psicologicamente valido — critica valida, ma non invalida il principio

### 8. Conclusioni
Tre punti:
1. Un modello dello studente come insieme di procedure è più espressivo dei modelli a registri e permette un insegnamento più sofisticato
2. Certi problemi della CAI coincidono con problemi fondamentali dell'informatica (equivalenza di programmi, rappresentazione di processi di problem-solving)
3. Le difficoltà teoriche e pratiche sono notevoli — l'implementazione di tutor realmente efficaci richiederà tempo

## Differenze rispetto a Counselorbot

L'articolo di Self è un riferimento storico per il concetto di **modello dello studente**, ma si colloca in un paradigma diverso da Counselorbot.

| Dimensione | Self (1974) | Counselorbot |
|---|---|---|
| **Origine del modello** | Il sistema costruisce un'ipotesi su ciò che lo studente **sa** (conoscenza del dominio) | Il profilo deriva da un **self-report** dello studente (questionari QSA, ZTPI) |
| **Natura del modello** | Insieme di **programmi** che rappresentano procedure cognitive del dominio | **Profilo di competenze strategiche**: fattori cognitivi e affettivo-motivazionali autovalutati |
| **Obiettivo dell'interazione** | **Insegnare** portando lo studente verso una conoscenza corretta (MT) | **Indagare con** lo studente i suoi aspetti emotivi e strategici per favorire riflessione e consapevolezza |
| **Ruolo del sistema** | Ha una "risposta giusta" e cerca contraddizioni | Non ha una risposta giusta: guida l'esplorazione del profilo autovalutato |
| **Meccanismo** | Confronto tra procedure del docente (MT) e dello studente (MS) | Chat guidata fattore per fattore, basata sui punteggi stanine |

In sintesi, Self appartiene alla tradizione dei **sistemi di tutoring intelligente** (ITS), in cui il sistema modella la conoscenza del dominio per personalizzare l'insegnamento. Counselorbot appartiene invece al dominio dell'**auto-valutazione assistita**: il chatbot non corregge lo studente, ma lo accompagna nell'esplorazione del proprio profilo di competenze strategiche, emerse da un self-report, non da una diagnosi esterna.
