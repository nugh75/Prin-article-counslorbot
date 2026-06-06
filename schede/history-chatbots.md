# Storia dei sistemi conversazionali — tappe fondamentali

> Solo riferimenti con full text verificabile (PDF in `schede/pdfs/`).

---

## Cronologia

### 1950 — Turing Test
Turing, A. M. (1950). Computing Machinery and Intelligence. *Mind*, 59(236), 433–460.
- Propone il test di Turing come criterio di intelligenza

### 1966 — ELIZA (Weizenbaum)
Weizenbaum, J. (1966). ELIZA. *Communications of the ACM*, 9(1), 36–45.
- Primo chatbot. Pattern matching, rule-based.
- Già in `reference.bib`

### 1974 — Student Models (Self)
Self, J. A. (1974). Student models in computer-aided instruction. *Int. J. Man-Machine Studies*, 6(2), 261–276.
- Concetto di modello dello studente. Radice dei sistemi educativi conversazionali.
- Già in `reference.bib`

### 2017 — Transformer (Vaswani et al.)
- **PDF**: `schede/pdfs/vaswani_2017_transformer.pdf` (arXiv)
- Vaswani, A., et al. (2017). Attention Is All You Need. *NeurIPS*, 30.

### 2018 — BERT (Devlin et al.)
- **PDF**: `schede/pdfs/devlin_2019_bert.pdf` (arXiv)
- Devlin, J., et al. (2019). BERT. *NAACL-HLT*.

### 2019 — GPT-2 (Radford et al.)
- **PDF**: `schede/pdfs/radford_2019_gpt2.pdf` (OpenAI)
- Radford, A., et al. (2019). Language Models are Unsupervised Multitask Learners.

### 2020 — GPT-3 (Brown et al.)
- **PDF**: `schede/pdfs/brown_2020_gpt3.pdf` (arXiv)
- Brown, T. B., et al. (2020). Language Models are Few-Shot Learners. *NeurIPS*, 33.

### 2020 — GPT-3: Nature, Scope, Limits (Floridi & Chiriatti)
- **PDF**: `schede/pdfs/floridi_2020_gpt3.pdf` (Springer OA)
- Floridi, L., & Chiriatti, M. (2020). GPT-3: Its Nature, Scope, Limits, and Consequences. *Minds and Machines*, 30, 681–694.

### 2023 — Xi et al. — Survey LLM Agents
- **PDF**: `schede/pdfs/xi_2023_llm_agents.pdf` (arXiv)
- Xi, Z., et al. (2023). The Rise and Potential of Large Language Model Based Agents: A Survey.

---

## Due paradigmi a confronto

| Dimensione | Rule-based (ELIZA, AIML) | Neurali (GPT, Claude) |
|------------|--------------------------|----------------------|
| Architettura | Regole if-then, pattern matching | Reti neurali profonde (transformer) |
| Apprendimento | Nessuno (scritte a mano) | Da dati, distribuzionale |
| Generalizzazione | Nessuna | Emergente (in-context learning) |
| Memoria | Stateless | Finestra di contesto |
| Robustezza | Alta (prevedibile) | Media (allucinazioni, bias) |
| Scalabilità | Bassa (ogni caso = nuova regola) | Alta (più dati = migliori) |
