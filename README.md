# Translate Clipboard Text using Ollama

This script translates text from the clipboard using Ollama and displays the translation in a terminal window. It is designed to be run with a keyboard shortcut in KDE Plasma.

## Requirements

- Ollama (make sure it's installed and configured)
- `xclip` (for clipboard operations)

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/MX-Goliath/OllamaSimpleTranslate.git
   cd translate-clipboard-ollama
   ```

2. **Make the script executable:**

   ```bash
   chmod +x translate.sh
   ```

3. **Install `xclip`:**

   If `xclip` is not already installed, you can install it using:

   ```bash
   sudo pacman -S xclip
   ```

## Usage

1. **Set up the script to run with a keyboard shortcut in KDE Plasma:**

   - Open "System Settings".
   - Go to "Shortcuts" or "Custom Shortcuts".
   - Create a new global shortcut and select "Command/URL".
   - Set the shortcut and the command to run the script. For example:

     ```bash
     konsole -e /path/to/your/translate.sh
     ```

2. **Copy the text you want to translate to the clipboard.**
3. **Press the assigned keyboard shortcut to run the script.**

The terminal window will open, showing the translation of the clipboard text.

## Script Details

Here is the full content of `translate.sh`:

```bash
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
```

This script:

- Retrieves text from the clipboard.
- Constructs a translation command for Ollama.
- Executes the command and retrieves the translation.
- Displays the translation in the terminal.
- Keeps the terminal window open until a key is pressed.

## Contributing

Feel free to submit issues or pull requests if you have any improvements or suggestions.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Acknowledgements

- Thanks to Ollama for providing the translation model.
- This project was inspired by the need to quickly translate text from the clipboard using a convenient keyboard shortcut.

