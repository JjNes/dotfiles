.PHONY: help setup macos-config gitconfig-local update

help:
	@echo "Makefile для управления dotfiles"
	@echo ""
	@echo "Доступные цели:"
	@echo "  setup            - Устанавливает dotfiles и все настройки"
	@echo "  macos-config     - Применяет системные настройки macOS"
	@echo "  gitconfig-local  - Генерирует локальный git конфиг"
	@echo "  update           - Обновляет репозиторий и повторно применяет настройки"

setup:
	@bash ./install

macos-config:
	@sudo bash ./macos/defaults.sh

gitconfig-local:
	@sh ./scripts/gen_gitconfig_local.sh

update:
	@git pull --recurse-submodules
	@$(MAKE) setup
