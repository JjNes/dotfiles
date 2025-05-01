# Dotfiles by JjNes

Этот репозиторий содержит мои персональные настройки окружения (dotfiles) для macOS.

## Состав
- Конфиги для git, zsh, starship и других инструментов
- Brewfile для автоматической установки CLI и GUI приложений
- Скрипты для настройки macOS
- Makefile для удобного управления установкой и генерацией локальных конфигов

## Быстрый старт

1. **Клонируйте репозиторий:**
   ```sh
   git clone --recursive https://github.com/jjnes/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. **Установите dotfiles и все зависимости:**
   ```sh
   make setup
   ```
   Это выполнит установку Homebrew, всех пакетов из Brewfile, создаст симлинки и применит базовые настройки.

3. **Примените системные настройки macOS:**
   ```sh
   make macos-config
   ```
   (или вручную: `sudo bash ./macos/defaults.sh`)

4. **Сгенерируйте локальный git-конфиг:**
   ```sh
   make gitconfig-local
   ```
   Если файл уже существует, для перезаписи используйте:
   ```sh
   make gitconfig-local FORCE=1
   ```

5. **Обновите dotfiles и повторно примените настройки:**
   ```sh
   make update
   ```

## Основные цели Makefile

- `make setup` — полная установка dotfiles и зависимостей
- `make macos-config` — применить системные настройки macOS (требует sudo)
- `make gitconfig-local` — создать локальный git-конфиг интерактивно
- `make update` — обновить репозиторий и повторно применить все настройки

## Структура

- `install.conf.yaml` — основной конфиг Dotbot
- `Brewfile` — список пакетов для Homebrew
- `config/` — все пользовательские конфиги (zsh, git, starship и др.)
- `scripts/` — вспомогательные скрипты (например, генерация gitconfig.local)
- `macos/` — скрипты для настройки системы

## Требования
- macOS
- [Homebrew](https://brew.sh/) (установится автоматически при setup)
- git

## Лицензия
MIT
