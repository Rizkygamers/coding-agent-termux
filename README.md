# Termux AI Agent Installer / Installer AI Agent Termux

A single bash script to set up common AI CLI tools and development environments on Termux.
*Satu script bash untuk instalasi tools CLI AI dan environment development di Termux.*

---

## 🇺🇸 English

### Quick Install
```bash
curl -fsSL https://raw.githubusercontent.com/Rizkygamers/coding-agent-termux/main/install.sh | bash
```

### What it installs
- **Base Packages**: `nodejs-lts`, `git`, `gh` (GitHub CLI)
- **AI Agents**:
    - **Antigravity**: CLI tool for AI interaction.
    - **Gemini CLI**: Google's Gemini AI interface.
    - **Claude Code**: Configured for Ollama / Gemma4.
    - **Termux-dev**: Developer utility set.

### Usage
- **Claude**: `claude`
- **Gemini**: `gemini`
- **Antigravity**: `agy`
- **Termux-dev**: `devx`

### Configuration
The script creates `~/.claude/env` to store environment variables:
- **Base URL**: `https://ollama.com`
- **Model**: `gemma4:31b`
- **Token**: `APIKEY_LU`

### Post-Installation
Reload your shell to apply changes:
```bash
source ~/.bashrc
```

---

## 🇮🇩 Bahasa Indonesia

### Instalasi Cepat
```bash
curl -fsSL https://raw.githubusercontent.com/Rizkygamers/coding-agent-termux/main/install.sh | bash
```

### Apa yang diinstal
- **Paket Dasar**: `nodejs-lts`, `git`, `gh` (GitHub CLI)
- **AI Agent**:
    - **Antigravity**: Tool CLI untuk interaksi AI.
    - **Gemini CLI**: Interface AI Gemini dari Google.
    - **Claude Code**: Dikonfigurasi untuk Ollama / Gemma4.
    - **Termux-dev**: Set utility untuk developer.

### Cara Pakai
- **Claude**: `claude`
- **Gemini**: `gemini`
- **Antigravity**: `agy`
- **Termux-dev**: `devx`

### Konfigurasi
Script ini membuat file `~/.claude/env` untuk menyimpan environment variables:
- **Base URL**: `https://ollama.com`
- **Model**: `gemma4:31b`
- **Token**: `APIKEY_LU`

### Pasca-Instalasi
Reload shell Anda untuk menerapkan perubahan:
```bash
source ~/.bashrc
```
