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


## Acknowledgements

Thanks to Ollama for providing the model.
This project was inspired by the desktop application DeepL and the ability to quickly translate via Ctrl+C+C.

