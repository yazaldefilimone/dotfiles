if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pomodoro cli

function pomodoro 
  #  echo $argv[1] | lolcat
  #  timer "$argv[2]"m 
   #  spd-say "'$argv[1]' session done"
   if test "$argv[1]" = "work"
     notify-send -t 5000 -i face-smile "Work Session" "Time to work for $argv[2] minutes!"
   else if test "$argv[1]" = "break"
     notify-send -t 5000 -i face-sad "Break Time" "Take a break for $argv[2] minutes!"
   end

  echo $argv[1] | lolcat
  timer "$argv[2]"m 
  
end

alias po="pomodoro"
alias work="pomodoro work 45"
alias relax="pomodoro break 10"

alias nvim '/usr/bin/neovim'
alias vim '/usr/bin/neovim'
set -x PATH /usr/bin $PATH
set -x PATH ~/.bun/bin $PATH
set -x PATH /usr/local/bin $PATH



set ZVM_INSTALL $HOME/.zvm/self
set -x PATH $PATH $HOME/.zvm/bin
set -x PATH $PATH $ZVM_INSTALL

# pnpm
set -gx PNPM_HOME "/home/yazaldefilimone/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
