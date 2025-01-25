# Dotfiles Setup Guide

  Wsg bro. Hope you have fun setting up your new work or personal machine

## Prerequisites
- Ensure you have Zsh installed. If not, you can install it using:
  ```bash
  sudo apt install zsh  # For Debian/Ubuntu
  brew install zsh        # For macOS
  ```

## Steps to Set Up

1. **Install Oh My Zsh**  
   First, install Oh My Zsh:
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

2. **Install Powerlevel10k**  
   Install Powerlevel10k theme:
   ```bash
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
   ```

3. **Copy Configuration Files**  
   Copy the following files to your home directory:
   ```bash
   # Copy Zsh configuration
   cp ~/.dotfiles/.zshrc ~/.zshrc
   cp ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
   
   # Copy theme and syntax highlighting
   cp ~/.dotfiles/dracula.zsh-theme ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/
   cp ~/.dotfiles/zsh-syntax-highlighting.zsh ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/
   ```

4. **Restart Zsh**  
   Restart your terminal or run:
   ```bash
   exec zsh
   ```

## Additional Notes
- The dracula theme is included in this repository, so no additional theme installation is needed
- You might need to install a compatible font for Powerlevel10k. We recommend [Meslo Nerd Font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
- Or Berkeley mono with nerd font [Berkeley Mono Nerd Font Patch](https://tech.serhatteker.com/post/2023-04/patch-berkeley-mono-font-with-nerd-fonts/)
- If you want to customize the prompt further, you can edit the `.p10k.zsh` file

Happy coding!
