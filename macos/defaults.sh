#!/usr/bin/env bash

set -e

echo 'Configuring your mac. Hang tight.'
osascript -e 'tell application "System Preferences" to quit'

# =========================
# === ОБЩИЕ НАСТРОЙКИ ===
# =========================

# Отключить звук при запуске Mac
sudo nvram SystemAudioVolume=%01

# Показывать полосы прокрутки только при прокрутке
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Всегда использовать расширенный диалог сохранения
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Разворачивать окно по двойному клику на заголовке
defaults write -g AppleActionOnDoubleClick 'Maximize'

# =========================
# === КЛАВИАТУРА И ВВОД ===
# =========================

# Полный доступ к управлению с клавиатуры (Tab в диалогах)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Быстрый повтор клавиш
defaults write NSGlobalDomain KeyRepeat -int 2
# Задержка перед началом повтора
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Использовать Fn как стандартную клавишу
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true
# Caps Lock для переключения раскладки
defaults write -g TISRomanSwitchState -int 1

# =========================
# === FINDER ===
# =========================

# Вид "Список" по умолчанию
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"
# Показывать расширения файлов
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Выделение текста в Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true
# Отключить предупреждение при изменении расширения
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Показывать папку Library
chflags nohidden ~/Library
# Искать по умолчанию только в текущей папке
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Не создавать .DS_Store на сетевых и USB-дисках
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# Развернуть панели информации: "Общие", "Открывать с помощью", "Права доступа"
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true

# =========================
# === SAFARI ===
# =========================

# Не отправлять поисковые запросы Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
# Отключить Java в Safari
defaults write com.apple.Safari \
  com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled \
  -bool false
defaults write com.apple.Safari \
  com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabledForLocalFiles \
  -bool false

# =========================
# === РЕДАКТИРОВАНИЕ ТЕКСТА ===
# =========================

# Отключить умные кавычки
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# Отключить автокоррекцию
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
# Отключить автозаглавные буквы
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
# Отключить умные тире
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
# Отключить автоматическую подстановку точки
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# =========================
# === TIME MACHINE ===
# =========================

# Не предлагать новые диски для резервного копирования
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# =========================
# === ACTIVITY MONITOR ===
# =========================

# Показывать все процессы в Мониторе системы
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# =========================
# === APP STORE ===
# =========================

# Отключить запросы на оценку приложений из App Store
defaults write com.apple.appstore InAppReviewEnabled -int 0

# =========================
# === ПРИМЕНИТЬ ИЗМЕНЕНИЯ ===
# =========================

echo 'Restarting apps...'
killall Finder
killall Dock

echo 'Done!'