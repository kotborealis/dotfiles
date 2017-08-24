# AVIT ZSH Theme

PROMPT=' ${_current_dir}'

local _current_dir="%{$fg_bold[blue]%}%3~%{$reset_color%} "
local _return_status="%{$fg_bold[red]%}%(?..⍉)%{$reset_color%}"
local _hist_no="%{$fg[grey]%}%h%{$reset_color%}"

function _current_dir() {
  local _max_pwd_length="65"
  if [[ $(echo -n $PWD | wc -c) -gt ${_max_pwd_length} ]]; then
    echo "%{$fg_bold[blue]%}%-2~ ... %3~%{$reset_color%} "
  else
    echo "%{$fg_bold[blue]%}%~%{$reset_color%} "
  fi
}

function _user_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[cyan]%}$me%{$reset_color%}:"
  fi
}

if [[ $USER == "root" ]]; then
  CARETCOLOR="red"
else
  CARETCOLOR="white"
fi

