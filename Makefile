.PHONY: pdf-on pdf-open pdf-off docx sync docx-serve

pdf-on: pdf-open

pdf-open:
	@echo "Apri nel browser: https://code.ai4educ.org/pdf/"
	@echo "I PDF sono serviti staticamente da nginx su /pdf/"
	@xdg-open "https://code.ai4educ.org/pdf/" 2>/dev/null || true

pdf-off:
	@echo "Il server PDF non è più un processo separato (nginx integrato)."
	@echo "Nessuna azione necessaria."

# --- Conversione articolo ---

docx: articles/current.docx

articles/current.docx: articles/current.md scripts/sync-and-convert.sh scripts/create-docx-template.py
	@scripts/sync-and-convert.sh
	@echo "✓ current.docx aggiornato"

sync:
	@scripts/sync-and-convert.sh --sync-source

docx-serve:
	@echo "Apri: https://code.ai4educ.org/pdf/current.docx"
	@echo "Oppure: file://$(PWD)/articles/current.docx"
