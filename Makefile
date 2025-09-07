# Этот Makefile требует явного указания цели

.PHONY: default app env

.DEFAULT_GOAL := app

default:
	@echo "Please specify the purpose clearly."

# Использование: make app=bot
app:
	@if "$(app)"=="" ( \
		echo use template: make env env=bot & \
		exit /b 1 \
	)
	python .\cmd\$(app)\main.py

# Использование: make env env=bot
env:
	@if "$(env)"=="" ( \
		echo use template: make env env=bot & \
		exit /b 1 \
	)
	@echo   .\.venv\$(env)\Scripts\activate
	@echo .\.venv\$(env)\Scripts\activate | clip
