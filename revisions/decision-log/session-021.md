---
session: "021"
date: 2026-06-15
tool: opencode
type: revision-global
decision: accepted-validated
suggestion: "Revisione globale v25: tesi, architettura argomentativa, proporzioni, arco narrativo, ridondanza, terminologia, coerenza strumenti, consistenza numerica"
rationale: "Revisione globale sulle sette lenti completata su article-v25-2026-06-15-0943.md. Interventi su: chiarezza della tesi, spostamento benchmark in §3.4, aggancio rischi §1.1→§5, headline finding, chiusura circolare §6, ridondanze ADDIE e deepfake, terminologia (meta-prompt, base di conoscenza), presentazione strumenti competenzestrategiche.it, uniformazione n partecipanti a 33."
items:
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "Introduzione"
    status: revised
    note: "Tesi riformulata: «Questo lavoro si propone di verificare se...» con risultato anticipato e caveat sul campione ridotto"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "2.4 / 3.4"
    status: revised
    note: "Spostato il benchmark modelli da §2.4 (Progettazione) a §3.4 (Metodologia); in §2.4 resta una sintesi con rinvio a §3.4"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "5. Discussione"
    status: revised
    note: "Aggiunto capoverso che collega i rischi discussi in §1.1 (inaccuratezza, credibilità, dipendenza) alle caratteristiche di Counselorbot"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "4.1 Esperienza utente"
    status: revised
    note: "Aggiunto headline finding iniziale: «I risultati del confronto tra le due versioni indicano un miglioramento diffuso...» anticipando i tre delta più alti"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "6. Conclusioni"
    status: revised
    note: "Aggiunta frase di chiusura che torna all'immagine d'apertura: lo studente non più solo col profilo QSA"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "6. Conclusioni"
    status: revised
    note: "Rimossa la terza menzione del modello ADDIE (già in Introduzione e §5); sostituita con rinvio ai limiti discussi nel §5"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "1.1"
    status: revised
    note: "Rimosso il riferimento ai deepfake (mai ripreso altrove); riformulato come difficoltà di discernere contenuti autentici"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "Global"
    status: revised
    note: "Unificato «meta prompt» → «meta-prompt» in tutto l'articolo (3 occorrenze)"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "5. Discussione"
    status: revised
    note: "Sostituito «knowledge base» → «base di conoscenza» per coerenza con la prima occorrenza in §2.3"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "1.3 / 6. Conclusioni"
    status: revised
    note: "Reinserita in §1.3 la presentazione degli strumenti su competenzestrategiche.it (ZTPI, QAP, QPCS, QPCC, QSAr). Uniformato l'elenco in §6 con ordine: competenzestrategiche → Savickas → PQBL"
  - type: edit
    file: articles/article-v25-2026-06-15-0943.md
    section: "Global"
    status: revised
    note: "Uniformato il numero di partecipanti: 33 (6 CB-SBS + 27 CB-C), rimosso il record di test da tutto il testo"
---

## Contesto

Sessione di revisione globale su `article-v25-2026-06-15-0943.md` (bump da v24),
successiva alle sessioni 019 (proofreading) e 020 (successione argomentativa).
L'obiettivo era applicare le sette lenti della revisione globale secondo il
workflow `34-global-revision.md`: tesi, architettura, proporzioni, arco
narrativo, ridondanza, terminologia, norme.

## Proposta macchina

È stato generato un report diagnostico completo sulle sette lenti, con
conteggio caratteri per sezione. L'utente ha scelto di affrontare tutte le
lenti eccetto le norme editoriali (citazioni APA→note e caporali, già
conformi). Per ogni lente sono state presentate proposte puntuali in formato
A/R/M:

- **Lente 1 (Tesi):** riformulazione da «l'articolo esamina» a «si propone di verificare», con risultato anticipato e caveat. Discussione sul verbo (argomenta→propone→si propone di verificare).
- **Lente 2 (Architettura):** spostamento del benchmark modelli da §2.4 a §3.4 (metodologia); aggancio dei rischi §1.1 nella Discussione §5.
- **Lente 4 (Arco narrativo):** headline finding in apertura di §4.1; chiusura circolare in §6 che torna allo studente col profilo QSA.
- **Lente 5 (Ridondanza):** rimossa terza menzione ADDIE in §6; tagliato il riferimento ai deepfake in §1.1.
- **Lente 6 (Terminologia):** unificato meta-prompt (con trattino); sostituito knowledge base con base di conoscenza in §5.
- **Controllo coerenza:** reinserita in §1.3 la presentazione degli strumenti competenzestrategiche.it; uniformato elenco in §6 con ordine corretto; corretto n partecipanti da 34 a 33 (rimosso record di test).

## Decisione umana

Accettato. L'utente ha approvato tutte le 11 modifiche proposte, con
due micro-decisioni puntuali: preferenza per il verbo «si propone di
verificare» anziché «argomenta»; richiesta di ordinare gli strumenti in §6
come competenzestrategiche → Savickas → PQBL.

## Modifiche applicate

11 modifiche totali su `article-v25-2026-06-15-0943.md`:

1. Introduzione: tesi riformulata con caveat integrato.
2. §2.4 → §3.4: benchmark modelli spostato in Metodologia; sintesi in §2.4.
3. §5: capoverso di chiusura sui rischi §1.1.
4. §4.1: headline finding iniziale.
5. §6: frase di chiusura circolare.
6. §6: terza menzione ADDIE sostituita con rinvio a §5.
7. §1.1: deepfake rimosso, riformulato.
8. Global: meta-prompt unificato (3 occorrenze).
9. §5: knowledge base → base di conoscenza.
10. §1.3 + §6: strumenti competenzestrategiche.it introdotti e uniformati.
11. Global: 34→33 partecipanti, record di test rimosso.

## Verifica finale

Controllati indice, rinvii interni (§2.4→§3.4, §5→§1.1, §6→§5), liste
strumenti coerenti tra §1.3, §2.1, §2.3 e §6. Il sistema citazionale APA
e la conversione in note a piè di pagina restano posticipati per vincoli
di budget (limite 30.000 caratteri).

## Note

La lente 3 (Proporzioni) è stata affrontata indirettamente: lo spostamento
del benchmark ha riequilibrato §2 (29.3%→22.3%) e §3 (12.6%→19.9%).
La lente 7 (Norme) è stata verificata solo per i caporali, risultati conformi.
La conversione APA→note e il rispetto del limite 30.000 caratteri restano
da affrontare in una sessione dedicata.
