#PROMPT='%{$fg[magenta]%}%n%\@%m%{$reset_color%}:$(git_prompt_info)%{$fg[green]%}%~ %{$fg_bold[red]%}➜ %{$reset_color%} '
PROMPT='$(status_color)➜  %{$fg[green]%}%~$(git_prompt)%{$reset_color%} '

git_prompt () {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        exit
    fi

    git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')

    if git diff --quiet 2>/dev/null >&2; then
        git_color="%{$fg[cyan]%}"
    else
        git_color="%{$fg[yellow]%}"
    fi

    echo " $git_color$git_branch%{$reset_color%}"
}

status_color() {
    if [ "$?" -ne "0" ]; then
        echo "%{$fg_bold[yellow]%}"
    else
        echo "%{$fg_bold[cyan]%}"
    fi
}

