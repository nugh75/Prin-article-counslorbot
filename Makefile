.PHONY: pdf-on pdf-open pdf-off

pdf-on: pdf-open

pdf-open:
	@echo "Apri nel browser: https://code.ai4educ.org/pdf/"
	@echo "I PDF sono serviti staticamente da nginx su /pdf/"
	@xdg-open "https://code.ai4educ.org/pdf/" 2>/dev/null || true

pdf-off:
	@echo "Il server PDF non è più un processo separato (nginx integrato)."
	@echo "Nessuna azione necessaria."
