#!/bin/bash

# Termux AI Agent All-in-One Installer

set -e

echo "Updating system and installing base packages..."
pkg update && pkg upgrade -y
pkg install nodejs-lts git gh -y

echo "Installing Antigravity..."
curl -fsSL https://raw.githubusercontent.com/wallentx/antigravity-cli-termux/dev/install.sh | bash

echo "Installing Gemini CLI..."
npm install -g @google/gemini-cli

echo "Installing Claude Code..."
curl -fsSL https://raw.githubusercontent.com/ferrumclaudepilgrim/claude-code-android/main/install.sh | bash

echo "Configuring Claude Code environment..."
mkdir -p ~/.claude
cat <<EOF > ~/.claude/env
export ANTHROPIC_BASE_URL=https://ollama.com
export ANTHROPIC_MODEL=gemma4:31b
export ANTHROPIC_AUTH_TOKEN=APIKEY_LU
EOF

for profile in ~/.bashrc ~/.zshrc; do
    if [ -f "$profile" ]; then
        if ! grep -q "source ~/.claude/env" "$profile"; then
            echo 'source ~/.claude/env' >> "$profile"
        fi
        if ! grep -q "alias agy='antigravity'" "$profile"; then
            echo "alias agy='antigravity'" >> "$profile"
        fi
    fi
done

echo "Installing Termux-devx..."
npm install -g termux-dev

echo "Installation complete. Run 'source ~/.bashrc' to apply changes."
