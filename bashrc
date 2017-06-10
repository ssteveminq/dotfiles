# .bashrc for OS X

alias vi='vim'


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#if [ -d ~/github/iTerm2-Color-Schemes/ ]; then
  #ftheme() {
    #local base
    #base=~/github/iTerm2-Color-Schemes
    #$base/tools/preview.rb "$(
      #ls {$base/schemes,~/.vim/plugged/seoul256.vim/iterm2}/*.itermcolors | fzf)"
  #}
#fi

#~/dotfiles/iTerm2-Color-Schemes/tools/preview.rb "$(
  #ls {~/dotfiles/iTerm2-Color-Scheme/schemes,~/.vim/plugged/seoul256.vim/iterm2}/seoul256.itermcolors | fzf)"

~/dotfiles/iTerm2-Color-Schemes/tools/preview.rb ~/.vim/plugged/seoul256.vim/iterm2/seoul256.itermcolors
