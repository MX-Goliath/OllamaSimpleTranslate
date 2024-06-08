#!/bin/bash

model=llama3
Language=Russian

# Получаем текст из буфера обмена
TEXT=$(xclip -o)

# Формируем команду для перевода с помощью Ollama
COMMAND="translate that into $Language language. just write the translation, nothing extra.: $TEXT"

# Выполняем перевод
TRANSLATION=$(ollama run $model "$COMMAND")

# Выводим результат
echo -e "$TRANSLATION"

# Чтобы удержать окно терминала открытым
read -p "Press any key to quit..."
