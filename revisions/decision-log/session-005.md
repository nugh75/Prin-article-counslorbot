---
session: "005"
date: 2026-05-26
tool: opencode
type: setup-project
decision: accepted
rationale: "Skill per tracciare ogni interazione umana–macchina, utile come documento per revisori e come memoria persistente per LLM"
items:
  - path: .claude/skills/decision-log/SKILL.md
    status: created
  - path: .claude/skills/decision-log/AGENTS.md
    status: created
  - path: .claude/skills/decision-log/templates/entry.md
    status: created
  - path: revisions/decision-log/index.md
    status: created
  - path: revisions/decision-log/session-001.md
    status: created
  - path: revisions/decision-log/session-002.md
    status: created
  - path: revisions/decision-log/session-003.md
    status: created
  - path: revisions/decision-log/session-004.md
    status: created
  - path: revisions/decision-log/session-005.md
    status: created
---

## Contesto

L'utente ha richiesto una skill che registri tutte le interazioni sull'articolo
(decisioni umane, suggerimenti macchina) e che funzioni con opencode, Claude Code
e Codex CLI. Finalità: produrre un documento presentabile a revisori/riviste.

## Proposta macchina

Creazione di una skill `decision-log` con:
- Formato misto Markdown + YAML frontmatter
- Tassonomia dei tipi di interazione (bibliography, content, structure, style, etc.)
- Indice cronologico con tabella riepilogativa
- Template riutilizzabile
- AGENTS.md per compatibilità cross-tool

## Decisione umana

Accettato (risposta «sì»).

## Modifiche applicate

- Creato `.claude/skills/decision-log/` con SKILL.md, AGENTS.md, templates/
- Create directory `revisions/decision-log/`
- Creato `index.md` con elenco sessioni
- Create session-001.md ÷ session-005.md con log della sessione corrente
- Questa entry (session-005) è auto-referenziale: registra la creazione della skill

## Note

La skill è progettata per essere:
1. **Leggibile** da umani (Markdown → PDF per revisori)
2. **Parsabile** da LLM (YAML frontmatter per query automatiche)
3. **Cross-tool** (AGENTS.md per Claude Code e Codex CLI)
