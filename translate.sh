#!/bin/bash

model=llama3
Language=Russian

# Get text from clipboard
TEXT=$(xclip -o)

# Form the command for translation using Ollama
COMMAND="translate that into $Language language. just write the translation, nothing extra.: $TEXT"

# Perform translation
TRANSLATION=$(ollama run $model "$COMMAND")

# Display the result
echo -e "$TRANSLATION"

# Keep the terminal window open
read -p "Press any key to quit..."
