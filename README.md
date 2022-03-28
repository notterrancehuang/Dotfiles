# Dotfiles

These are my customization files.

### Installation:

Homebrew: 
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Oh My Zsh: 
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Homebrew formula: 
```
brew bundle install
```
Powerlevel10k:
```
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
```
In vimrc:
```
:PlugInstall
```
