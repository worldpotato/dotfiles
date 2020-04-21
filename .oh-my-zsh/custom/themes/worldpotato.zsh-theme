# Yay! High voltage and arrows!
# Based on pygmalion
# for more information see: https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# works best with 256 colors

prompt_setup_worldpotato(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[012]$BG[008]%} "
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
  ZSH_THEME_GIT_PROMPT_SEPARATOR=""
  ZSH_THEME_GIT_PROMPT_BRANCH="%{$FG[012]$BG[008]%}"
  ZSH_THEME_GIT_PROMPT_STAGED="%{$FG[003]$BG[008]%}%{%G%}"
  ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$FG[001]$BG[008]%}%{%G%}"
  ZSH_THEME_GIT_PROMPT_CHANGED="%{$FG[002]$BG[008]%}%{%G%}"
  ZSH_THEME_GIT_PROMPT_BEHIND="%{$FG[005]$BG[008]%}%{↓%G%}"
  ZSH_THEME_GIT_PROMPT_AHEAD="%{$FG[014]$BG[008]%}%{↑%G%}"
  ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[007]$BG[008]%}%{…%G%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[002]$BG[008]%}%{✔%G%}"

  base_prompt_host='%{$FG[012]$BG[008]%}  %{$reset_color%}'
  base_prompt_host_end='%{$FG[008]$BG[000]%}%{$reset_color%}'
  base_prompt_dir='%{$FG[011]$BG[000]%} %0~%{$reset_color%}'
  base_prompt_dir_end='%{$FG[000]$BG[008]%}%{$reset_color%}'
  base_prompt_git_end='%{$FG[008]%}%{$reset_color%}'

  post_prompt='%{$FG[009]%} >_ %{$reset_color%}'

 # no_color for calculation of length
  base_prompt_host_nocolor=$(echo "$base_prompt_host" | perl -pe "s/%\{[^}]+\}//g")
  base_prompt_host_nocolor=$(echo "$base_prompt_host_end" | perl -pe "s/%\{[^}]+\}//g")
  base_prompt_dir_nocolor=$(echo "$base_prompt_dir" | perl -pe "s/%\{[^}]+\}//g")
  base_prompt_dir_end_nocolor=$(echo "$base_prompt_dir_end" | perl -pe "s/%\{[^}]+\}//g")

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_worldpotato_precmd)

  RPROMPT=''
}


prompt_worldpotato_precmd(){
  local gitinfo=$(git_super_status)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_host_nocolor$base_prompt_host_end_nocolor$base_prompt_dir_nocolor$base_prompt_dir_end_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local full_prompt_length=${#exp_nocolor}

  local nl=""

  if [[ $full_prompt_length -gt 40 ]]; then
    nl=$'\n%{\r%}';
  fi
  PROMPT="$base_prompt_host$base_prompt_host_end$base_prompt_dir$base_prompt_dir_end$gitinfo$base_prompt_git_end$nl$post_prompt"
}

prompt_setup_worldpotato


