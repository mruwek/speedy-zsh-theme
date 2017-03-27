# Speedy - simple theme with git info, return status, background jobs marker,
# vi_mode indicator, and time.
#
# Inspired by afowler and flazz themes from oh-my-zsh.

local uid_color="%F{blue}"
[[ $UID -eq 0 ]] && uid_color="%F{red}"

local return_code="%(?..%F{red}✘%f)"

RPS1="\$(vi_mode_prompt_info) ${return_code} %F{75}%T%f"
PROMPT="%m %B%(1j.%F{75}⚙.%F{75}:) %b%F{113}%3~ \$(git_prompt_info)%B${uid_color}%#%f%b "

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{117}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%b%f "
MODE_INDICATOR="%B%F{75}<%b%F{cyan}<<%f"
