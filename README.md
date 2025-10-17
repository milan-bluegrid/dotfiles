# 🧰 PakiOS Dotfiles

My personal configuration files for a clean, fast, and keyboard-driven workflow on **Arch Linux**.  
Managed with [GNU Stow](https://www.gnu.org/software/stow/) for easy installation and maintenance.

---

## 🏗️ Overview

This repository includes configuration for:

| Tool | Description |
|------|--------------|
| 🖥️ **Alacritty** | GPU-accelerated terminal emulator |
| 💫 **Hyprland** | Dynamic Wayland compositor with tiling and animations |
| 🧠 **Neovim** | My main text editor, with Lua-based configuration |
| 🚀 **Starship** | Cross-shell prompt for a clean and fast terminal |
| 🧩 **GNU Stow** | Manages dotfiles via symlinks for portability and consistency |

---

## ⚙️ Installation

> ⚠️ Before installing, make sure you’ve backed up any existing configuration files.

### 1. Clone the repo

```bash
git clone https://github.com/<your-username>/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```
### 2. Install dependencies

You can install required packages using `pacman` (and optionally `yay` for AUR):
```bash
sudo pacman -S --needed git stow neovim alacritty starship hyprland
```
### 3. Stow configurations

Use GNU Stow to symlink configurations to your home directory:
```bash
stow alacritty
stow nvim
stow starship
stow hypr
```
You can also install all at once:
```bash
stow */
```
This will symlink everything inside `~/.dotfiles` to your `$HOME`.

---

## 🪄 Usage
Whenever you update your dotfiles:
```bash
cd ~/.dotfiles
git pull origin main
stow -R */
```
To remove a specific config (for example, `alacritty`):
```bash
stow -D alacritty
```

---

### 📂 Directory Structure
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
Each directory mirrors the structure inside your `$HOME`, which is how GNU Stow knows where to place the symlinks.

---

### 📝 License

These dotfiles are open source under the MIT License.
Feel free to fork, adapt, and share — and remember to `stow responsibly 🪣`.
