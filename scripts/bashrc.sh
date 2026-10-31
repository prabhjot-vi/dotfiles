############################################
# Comman Config 
############################################

alias ll="ls -lh"
alias la="ls -alh"

DV_NAME="dev"

DV_ENTER_COMMAND="distrobox enter ${DV_NAME}"

DV_TMUX_COMMAND="cd ~/Projects && tmux"
DV_TMUX_ATTACH_COMMAND="${DV_TMUX_COMMAND} attach-session"

if [[ "${HOSTNAME}" == "${DV_NAME}" ]]; then	
	############################################
	# Dev Container Config
	###########################################i#

	# Home Brew
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

	# Home Brew Completion
	if type brew &>/dev/null
	then
  		HOMEBREW_PREFIX="$(brew --prefix)"
  		if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  		then
    			source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  		else
    			for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    			do
      				[[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    			done
  		fi
	fi

	# if [[ "$TMUX" 

	alias dvt=$DV_TMUX_COMMAND
	alias dva=$DV_TMUX_ATTACH_COMMAND

else
	############################################
	# Host Config
	############################################

	# Host dev command
	alias dv=${DV_ENTER_COMMAND}
	alias dvt="${DV_ENTER_COMMAND} -- bash -c \"${DV_TMUX_COMMAND}\""
	alias dva="${DV_ENTER_COMMAND} -- bash -c \"${DV_TMUX_ATTACH_COMMAND}\""
fi
