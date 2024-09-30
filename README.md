# IGMT Dotfiles Linux

## Install Homebrew
First, update your system
```shell
sudo apt-get update
sudo apt-get upgrade
```

Install required dependencies
```shell
sudo apt-get install build-essential procps curl file git
```

Download and run the Homebrew installation script
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the instructions given by the installation script. You may need to add Homebrew to your PATH. The script will provide the exact commands, but they typically look like this
```shell
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

Verify the installation
```shell
brew --version
```

## Setup Git
```shell
git config --global user.name "yourusername"
git config --global user.email "your@email.com"
git config --global init.defaultBranch main
```

## Install ZSH
First, ensure that Homebrew is installed and up to date
```shell
brew update
```

Then, use Homebrew to install Zsh
```shell
brew install zsh
```

After the installation is complete, you can verify it by checking the Zsh version
```shell
zsh --version
```

If you want to make ZSH your default shell, you can use the following command
```shell
chsh -s $(which zsh)
```

If there's an error on setting the ZSH to be your default shell

First, verify that Zsh is correctly installed and its path
```shell
which zsh
```
This should return the path to Zsh, likely something like /home/linuxbrew/.linuxbrew/bin/zsh.

Check if Zsh is listed in the allowed shells
```shell
cat /etc/shells
```
If the path to your Homebrew-installed Zsh is not listed here, you'll need to add it.

If Zsh is not in /etc/shells, add it
```shell
echo $(which zsh) | sudo tee -a /etc/shells
```

Now try changing your shell again
```shell
chsh -s $(which zsh)
# OR
sudo chsh -s $(which zsh)
# OR
chsh -s /home/linuxbrew/.linuxbrew/bin/zsh
# OR
sudo chsh -s /home/linuxbrew/.linuxbrew/bin/zsh
# OR
sudo chsh -s /home/linuxbrew/.linuxbrew/bin/zsh your-username
```

Now add the path of Homebrew on ZSH
```shell
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc
```
Install Powerlevel10k
```shell
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
```

Restart ZSH
```shell
source ~/.zshrc
```

Install ZSH Autosuggestions & ZSH Syntax Highlighting
```shell
brew install zsh-autosuggestions zsh-syntax-highlighting

echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
# OR
echo "source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
# OR
echo "source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```

Restart ZSH
```shell
source ~/.zshrc
```

## Install Eza & Zoxide
```shell
brew install eza zoxide
```

Add this to enable Zoxide in ZSH
```
eval "$(zoxide init zsh)"
```

Add Alias for Zoxide in ZSH
```
alias cd="z"
```

Add Alias for EZA in ZSH
```
alias ls="eza --icons=always"
alias tree="eza --tree"
```

Add Alias for Neovim
```
alias vim="nvim"
```

Add Alias for Edit & Reload ZSH
```
alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"
```

## Install Wezterm
[Wezterm](https://wezfurlong.org/wezterm/install/linux.html#__tabbed_1_3)

Create Wezterm Config File
```shell
mkdir -p ~/.config/wezterm
nano ~/.config/wezterm/wezterm.lua
```

Copy my wezterm.lua

Exit and Re-run Wezterm

## Install TMUX
```shell
brew install tmux
```

Install TMUX Plugin Manager
```shell
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Copy my tmux.conf

Restart TMUX
```lua
leader (ctrl + a) + :source-file ~/.config/tmux/tmux.conf
```

Install TMUX Plugins
```lua
leader (ctrl + a) + shift + i
```

## Install Node
```shell
brew install node
```

## Install Neovim
```shell
brew install neovim
```

[Setup Neovim To Make It AMAZING in 2024: The Ultimate Guide](https://www.youtube.com/watch?v=6pAG3BHurdM&t=187s&ab_channel=JoseanMartinez)

# KEYMAPS / COMMANDS

## NEOVIM COMMANDS

### Restart Neovim
```lua
:source %
```

### File Explorer (Default Neovim File Explorer)
```lua
vim . -- Open Neovim File Explorer
:Explore -- Open Neovim File Explorer inside of Neovim
shift + 5 -- Create file inside current folder of Neovim File Explorer
:e folder/filename -- Create file anywhere inside of Neovim File Explorer
```

### Normal Mode
```lua
0 -- Go to the Start line
G -- Go to the Last line
$ -- Go to the End of line

leader (space) + + -- Increment Number
leader (space) + -- Decrement Number

leader (space) + s + v -- Split Window Vertically
leader (space) + s + h -- Split Window Horizontally
leader (space) + s + e -- Make Splits Equal Size
leader (space) + s + x -- Close Current Split
leader (space) + t + o -- Open New Tab
leader (space) + t + x -- Close Current Tab
leader (space) + t + n -- Go to Next Tab
leader (space) + t + p -- Go to Previous Tab
leader (space) + t + f -- Open Current Buffer in New Tab
```

### Visual Mode
```lua
v + G -- Select text from current line to last line
v + $ -- Select text from current line to end of line
v + i + w -- Select a word
number of line + k/j -- To up and down where the number line
shift + 8 -- To search all instances of that string
```

### Insert Mode
```lua
j + k -- To exit Insert Mode
```

### Command Mode
```lua
/ -- Search Text Highlights
leader (space) + n + h -- To remove the Search Text Highlights
```

### Replace Mode
```lua
shift + r -- To replace the text
```

### Gitsigns
```lua
leader (space) + h + s -- To stage specific git hunks line (Equivalent to "git add")
leader (space) + h + S -- To stage the whole git hunks
leader (space) + h + u -- To undo the stage
leader (space) + h + r -- To undo the current line git hunks
leader (space) + h + R -- To undo the whole git hunks
leader (space) + h + b -- To see who modified/add the string
leader (space) + h + d -- To see the difference on the old and the new
] + h -- To go down to the git hunks
[ + h -- To go up to the git hunks
```

### LSP
```lua
leader (space) + c + a -- Will open the recommendations for how to fix it
leader (space) + r + n -- This will rename all instances of that string on the current file or anywhere in other file
leader (space) g + d -- Go to definition
leader (space) g + t -- Go to type definition
ctr + o -- To back
leader (space) + r + s -- To restart LSP
```

### Substitute
```lua
s + i + w -- Replace the word with copied word
S -- Replace the word from cursor to the end of line with copied word
s + $ -- Replace the word from cursor to the end of line with copied word
s + G -- Replace the word from current line to the last line
```

### Surround
```lua
y + s + i + w + alphanumeric -- Select a word and surround with alphanumeric
d + s + alphanumeric -- To delete the surround alphanumeric on the word
c + s + alphanumeric (old string) + alphanumeric (new string) -- To replace the surround old alphanumeric with new alphanumeric
y + s + t + alphanumeric + alphanumeric -- To add a surround alphanumeric from cursor to before end of alphanumeric of that word
. -- To add a surround previous alphanumeric

y + s + number of line + j/k + t -- To add a surround tag
c + s + t -- To replace surround tag
d + s + t -- Delete the surround tag in html
```

### Bufferline
```lua
leader (space) + t + o -- New Tab
leader (space) + t + x -- Close Tab
```

### Nvim Tree (Better Neovim File Explorer
```lua
leader (space) + e + e -- Toggle File Explorer
leader (space) + e + f -- Toggle File Explorer on current file
leader (space) + e + c -- Collapse File Explore
leader (space) + e + r -- Refresh File Explorer

a -- To create a file inside of File Explorer
r -- To rename a file or folder inside of File Explorer
```

### Comment
```lua
g + c + G -- To comment all string
g + c + c -- To comment current line
g + c + number of line + j/k -- To comment specific string from current line to number of line
```

### Todo Comment
```lua
comment sign + TODO/HACK/BUG/WARN/PREF/TEST/NOTE + comment -- For better comment
```

### Telescope
```lua
leader (space) + f + f -- Find Files
leader (space) + f + r -- Find Recent Files
leader (space) + f + s -- Find String
leader (space) + f + c -- Find String under cursor
leader (space) + f + t -- Find Todos
ctrl + o/i -- To back on previous file
```

### Autocomplete
```lua
ctrl + space -- To open Autocompletion window
ctrl + j/k -- To select up and down
ctrl + e -- To close Autocomplete window
```

### Treesitter
```lua
ctrl + space -- To Select String
```

### Auto Session
```lua
leader (space) + w + s -- Save Session
leader (space) + w + r -- Restore Session
```

## TMUX
```lua
leader (ctrl + a) + | -- To horizontal split pane
leader (ctrl + a) + - -- To vertical split pane

leader (ctrl + a) + h/j/k/l -- To Resize Split Pane
ctrl + h/j/k/l -- To Navigate Between Split Pane

leader (ctrl + a) + c -- To Create New Window
leader (ctrl + a) + (number of the window) -- To Navigate Between Window
leader (ctrl + a) + n/p -- To Next or Previous Window
leader (ctrl + a) + , -- Renaming Window
leader (ctrl + a) + w -- To View All Window
```
