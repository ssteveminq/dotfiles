############################################
# .bashrc                                  #
# Minkyu Kim ( steveminq@gmail.com ) #
############################################
alias vi='vim'

if [ -n "$TMUX_PANE" ]; then
   #https://github.com/wellle/tmux-complete.vim
  fzf_tmux_words() {
    tmuxwords.rb --all --scroll 500 --min 5 | fzf-down --multi | paste -sd" " -
  }

   #ftpane - switch pane (@george-b)
  ftpane() {
    local panes current_window current_pane target target_window target_pane
    panes=$(tmux list-panes -s -F '#I:#P - #{pane_current_path} #{pane_current_command}')
    current_pane=$(tmux display-message -p '#I:#P')
    current_window=$(tmux display-message -p '#I')

    target=$(echo "$panes" | grep -v "$current_pane" | fzf +m --reverse) || return

    target_window=$(echo $target | awk 'BEGIN{FS=":|-"} {print$1}')
    target_pane=$(echo $target | awk 'BEGIN{FS=":|-"} {print$2}' | cut -c 1)

    if [[ $current_window -eq $target_window ]]; then
      tmux select-pane -t ${target_window}.${target_pane}
    else
      tmux select-pane -t ${target_window}.${target_pane} &&
      tmux select-window -t $target_window
    fi
  }

   #Bind CTRL-X-CTRL-T to tmuxwords.sh
  bind '"\C-x\C-t": "$(fzf_tmux_words)\e\C-e\er"'

#elif [ -d ~/dotfiles/iTerm2-Color-Schemes/ ]; then
  #~/dotfiles/iTerm2-Color-Schemes/tools/preview.rb ~/.vim/plugged/seoul256.vim/iterm2/seoul256.itermcolors
fi

ccmake() {
  CXX="$HOME/dotfiles/clang/cc_args.py clang++" cmake ..
}


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# please set network-interface
network_if=wlxf81a670ffd60

if [ -e /opt/ros/kinetic/setup.bash ] ; then
    source /opt/ros/kinetic/setup.bash
elif [ -e /opt/tmc/ros/indigo/setup.bash ] ; then
    source /opt/tmc/ros/indigo/setup.bash
else
    echo "ROS packages are not installed."
fi

export TARGET_IP=$(LANG=C /sbin/ifconfig $network_if | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
if [ -z "$TARGET_IP" ] ; then
    echo "ROS_IP is not set."
else
    export ROS_IP=$TARGET_IP
fi

export ROS_HOME=~/.ros
alias sim_mode='export ROS_MASTER_URI=http://localhost:11311 export PS1="\[\033[44;1;37m\]<local>\[\033[0m\]\w$ "'
alias hsrb_mode='export ROS_MASTER_URI=http://hsrb.local:11311 export PS1="\[\033[41;1;37m\]<hsrb>\[\033[0m\]\w$ "'
source /opt/ros/kinetic/setup.bash
