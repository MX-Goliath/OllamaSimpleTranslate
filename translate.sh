#!/bin/bash

model=phi3:latest

# Получаем текст из буфера обмена
TEXT=$(xclip -o)

# Формируем команду для перевода с помощью Ollama
COMMAND="переведи это на русский язык: $TEXT"

# Выполняем перевод
TRANSLATION=$(ollama run $model "$COMMAND")

# Выводим результат
echo -e "$TRANSLATION"

# Чтобы удержать окно терминала открытым
read -p "Нажмите любую клавишу для закрытия..."
