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
```vim 
" arrow key
h j k l
" navigate word
e b 
" navigate paragraph
{ }
" goto line
:'number'
" grab screen
ctrl e or y
" visual mode
v V
" insert mode
i a I A
" edit file
:e
" save file
:w
" quit file
:q
" new buffer
ctrl w + v or s
" navigate buffer
ctrl w + h j k l
" goto alphabet
f + 'alphabet'
```

### General
```vim
" fzf
ctrl p
" commenter
> " invert
, + c + i 
> " invert and yang
, + c + y
" snippet (.vim/plugged/vim-plugged/Ultisnip)
'trigger' + <TAB>
" rgrep
f3
" kill white space
f5
" replace
,s 'word'
,s 'word'/gc
" paste mode
f8
" tag toggle
f9
" table mode
> " table mode enable / disalbe
, + t + m
        vim surround
        multi curosr
        clever-f
        goyo and friend
        git fugitive
```
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
