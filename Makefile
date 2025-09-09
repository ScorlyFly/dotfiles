# Этот Makefile требует явного указания цели

.PHONY: default app env
MAKEFLAGS += --no-print-directory  

.DEFAULT_GOAL := app


empty_app :=
empty_env :=

help:
	@echo make app=app -- python ./cmd/app/main.py
	@echo make env env=app -- activate environment in .venv/app/Script/activate


app:
    ifeq ($(app), $(empty_app))
		@echo "*** Makerfile *** not a single parameter was passed! you can use: make help "
    else
		@python .\cmd\$(app)\main.py
    endif


env:
    ifeq ($(env), $(empty_env))
		@echo "not a single parameter was passed! you can use: make help "
    else
		@echo .\.venv\$(env)\Scripts\activate | clip
    endif
