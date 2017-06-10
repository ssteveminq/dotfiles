# Tmux
### Key Binding
```sh
# new session
$ tmux new-session -s 'session-name'
# detach session
$ tmux detach
# attach session
$ tmux attach -t 'session-name'
# session list
$ tmux ls
# new window
$ ctrl a + c
# window navigation
$ ctrl a + 'window-number'
# window kill
$ ctrl a + x
# new pane
$ ctrl a + v or s
# pane navigation
$ ctrl a + hjkl
# pane kill
$ ctrl a + x
# copy mode
$ ctrl a + [
# terminal copy and past to vim
$ ctrl a + ctrl t
# terminal screen capture
$ ctrl a + ctrl c
# fuzzy-finder
$ cd ~/**<TAB>
$ vim ~/**<TAB>
```
# Vim
### Basic
- navigation
        - h j k l : arrow key
        - e b : navigate word
        - { } : paragraph
        - :number : goto line
        - ctrl e or y : grab
        - v V : visual mode
        - i a I A : insert mode
        - :e 'file-name' 
        - :w : save
        - :q : quit
        - ctrl w + v or s : new buffer
        - ctrl w + h j k l : navigation buffer
        - f + 'alphabet' : goto alphabet

### General
- fzf
- commenter
- snippet
- f3
- f5
- ,s
        f8
        f9
        table
        vim surround
        multi curosr
        clever-f
        goyo and friend
        git fugitive

### C++/C
        a.vim
        completer( goto def )
        clang_complete
        ctags

### Python
        goto( TODO )

### Latex
        ,ll
        ,lv
        ,lt

### Txt
        bullet
