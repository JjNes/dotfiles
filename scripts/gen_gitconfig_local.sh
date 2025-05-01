#!/usr/bin/env bash

# Скрипт для генерации gitconfig.local

read -p "Введите ваше имя для git: " git_name
read -p "Введите ваш email для git: " git_email

cat > ~/.gitconfig.local <<EOF
[user]
        name = $git_name
        email = $git_email
[credential]
        helper = osxkeychain
EOF

echo "Файл gitconfig.local успешно создан!" 