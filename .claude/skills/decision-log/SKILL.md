# Skill: decision-log

Traccia ogni interazione umana–macchina nella revisione dell'articolo.
Produce un registro strutturato (Markdown + YAML frontmatter) utile:
- come documento per revisori/riviste (leggibile, convertibile in PDF)
- come memoria persistente per l'LLM (parsabile via YAML)
- come audit trail delle decisioni umane

## Struttura del progetto

```
<project-root>/
└── revisions/
    └── decision-log/
        ├── index.md                   # indice cronologico delle sessioni
        ├── session-001.md
        ├── session-002.md
        └── ...
```

## Formato di ogni entry

Ogni file `session-NNN.md` inizia con frontmatter YAML:

```yaml
---
session: "001"
date: 2026-05-26
tool: opencode                          # opencode | claude-code | codex | aider | other
type: revision-bibliography             # tassonomia: vedi sotto
decision: accepted                      # accepted | rejected | modified | deferred
suggestion: "Aggiunti 7 riferimenti (blocchi A–C)"
rationale: "Riferimenti trasversali su LLM e chatbot terapeutici"
items:
  - type: reference
    key: vaswani2017
    status: added
  - type: reference
    key: brown2020
    status: added
  - type: reference
    key: li2023npj
    status: added
---
```

Segue il corpo in Markdown:

```markdown
## Contesto
Riquadro dell'articolo / sezione / punto revisione in cui è avvenuta l'interazione.

## Proposta macchina
Testo integrale della proposta o suggerimento dell'LLM.

## Decisione umana
A/R/M + motivazione esplicita.

## Modifiche applicate
Elenco puntato delle modifiche effettivamente scritte sul file.

## Note
Annotazioni aggiuntive, dubbi, rinvii a sessioni successive.
```

## Tassonomia dei tipi (`type`)

| type | Cosa traccia |
|---|---|
| `revision-bibliography` | Aggiunta/rimozione/modifica di referenze |
| `revision-content` | Modifica al testo dell'articolo |
| `revision-structure` | Cambiamento di struttura/sezioni |
| `revision-style` | Adeguamento stilistico/norme editoriali |
| `revision-connector` | Revisione connettori logici |
| `revision-global` | Revisione globale (struttura, architettura argomentativa) |
| `setup-project` | Inizializzazione progetto / bootstrapping |
| `setup-zotero` | Configurazione Zotero / import bibliografia |
| `human-note` | Nota libera, decisione non legata a una proposta macchina |
| `reviewer-feedback` | Inserimento feedback da revisore esterno |
| `version-bump` | Bump di versione dell'articolo |

## Decisioni (`decision`)

| decision | Significato |
|---|---|
| `accepted` | Tutte le modifiche accettate |
| `rejected` | Tutte le modifiche respinte |
| `modified` | Accettate con modifiche umane |
| `deferred` | Rinviato a sessione successiva |
| `partial` | Accettate solo alcune modifiche della proposta |

## Indice (`revisions/decision-log/index.md`)

L'indice raccoglie in ordine cronologico decrescente tutte le sessioni,
con un riepilogo tabellare:

```markdown
# Decision Log — Counselorbot

| Sessione | Data | Tool | Tipo | Decisione | Oggetto |
|---|---|---|---|---|---|
| [001](session-001.md) | 2026-05-26 | opencode | revision-bibliography | accepted | Aggiunti 7 ref (blocchi A–C) |
| [002](session-002.md) | 2026-05-26 | opencode | setup-zotero | accepted | Configurata collezione 6566336 |
```

## Regole per l'LLM

1. **Crea una nuova sessione** all'inizio di ogni interazione significativa
   (non per comandi triviali come `ls` o `read`).
2. **Compila sempre il frontmatter YAML**: è ciò che rende il log processabile
   dall'LLM stesso e da script esterni.
3. **Includi la proposta macchina per intero**: serve ai revisori per vedere
   cosa è stato suggerito vs cosa è stato deciso.
4. **Registra la motivazione umana**: è la parte più importante per l'audit.
5. **Aggiorna `index.md`** dopo ogni nuova sessione.
6. **Leggi il log** prima di iniziare una nuova sessione: se l'utente dice
   «riprendiamo», consulta l'ultima sessione per continuità.

## Interazione tra skill

| Skill | Handoff |
|---|---|
| `article-revision` | Ogni punto A/R/M in `article-revision` DEVE essere registrato in `decision-log` |
| `bibliography-verify` | Ogni verifica/aggiornamento bibliografico DEVE essere registrato |
| `tone-of-voice` | Quando una modifica è motivata dalle norme ToV, registrarle in `rationale` |
