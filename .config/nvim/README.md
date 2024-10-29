## Keymaps

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
