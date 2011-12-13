#PROMPT='%{$fg[magenta]%}%n%\@%m%{$reset_color%}:$(git_prompt_info)%{$fg[green]%}%~ %{$fg_bold[red]%}➜ %{$reset_color%} '
PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%} %{$fg[green]%}%c $(git_prompt_info)%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}#"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}#"
