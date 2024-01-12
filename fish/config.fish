# Requires https://github.com/caarlos0/timer to be installed. spd-say should ship with your distro

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
set -x PATH ~/.nvm $PATH
set -x PATH /usr/local/bin $PATH

