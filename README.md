# 🧰 PakiOS Dotfiles

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?logo=arch-linux&logoColor=white)](https://archlinux.org)
[![Neovim](https://img.shields.io/badge/Neovim-57A143?logo=neovim&logoColor=white)](https://neovim.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GNU Stow](https://img.shields.io/badge/Managed%20with-GNU%20Stow-orange?logo=gnu)](https://www.gnu.org/software/stow/)

My personal configuration files for a clean, fast, and keyboard-driven workflow on **Arch Linux**.  
Managed with [GNU Stow](https://www.gnu.org/software/stow/) for easy installation and maintenance.

---

## 🏗️ Overview

This repository includes configuration for:

| Tool | Description |
|------|--------------|
| 🖥️ **Alacritty** | GPU-accelerated terminal emulator |
| 💫 **Hyprland** | Dynamic Wayland compositor with tiling and animations |
| 🧠 **Neovim** | My main text editor with Lua-based configuration |
| 🚀 **Starship** | Cross-shell prompt for a clean and fast terminal |
| 🧩 **GNU Stow** | Manages dotfiles via symlinks for portability and consistency |

---

## ⚙️ Installation

> ⚠️ **Before installing**, make sure you’ve backed up any existing configuration files.

### 1. Clone the **repository**

```bash
git clone https://github.com/<your-username>/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```
### 2. Install dependencies

Install required packages using `pacman` (and optionally `yay` for AUR packages):
```bash
sudo pacman -S --needed git stow neovim alacritty starship hyprland
```
### 3. Apply configurations

Use GNU Stow to symlink configurations to your home directory:
```bash
stow alacritty
stow nvim
stow starship
stow hypr
```
Or apply **all configurations at once**
```bash
stow */
```
This will symlink everything inside `~/.dotfiles` to your `$HOME`.

---

## 🪄 Usage
After pulling **new changes**:
```bash
cd ~/.dotfiles
git pull origin main
stow -R */
```
To remove a specific configuration (for example, `alacritty`):
```bash
stow -D alacritty
```

---

## 📂 Directory Structure
```bash
~/.dotfiles
├── alacritty/
│   └── .config/alacritty/alacritty.yml
├── nvim/
│   └── .config/nvim/init.lua
├── starship/
│   └── .config/starship.toml
├── hypr/
│   └── .config/hypr/hyprland.conf
└── README.md
```
Each directory mirrors your `$HOME` layout — that’s how **GNU Stow** knows where to place the symlinks.

---

## 📝 License

Licensed under the **MIT License**.

Feel free to fork, adapt, and share — and remember to *stow responsibly* 🪣.

---

© 2025 PakiOS 🧰 — Made with ❤️ on Arch Linux
