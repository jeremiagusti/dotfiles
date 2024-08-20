# Atuin for better command line history
eval "$(atuin init zsh)"

# Prompt customization
NEWLINE=$'\n'
export PROMPT="${NEWLINE}%B%F{green}%n%f %F{blue}%5~%f${NEWLINE}%F{red}%%%f%b " # Customize prompt

# sdkman for jvm
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# nvm configurations
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# My aliases
alias gitg="git log --branches --oneline --graph"
alias ghex="gh copilot explain"
alias ghsu="gh copilot suggest"
alias lg="lazygit"

alias java11="sdk use java 11.0.22-amzn"
alias java8="sdk use java 8.0.402-amzn"

# Alias to jumpbox HA_Connect PROD
alias haconnectp="tsh login --proxy=teleport.us-east-1.runtime.prod-cts.exp-aws.net && tsh ssh -N -L 1433:rptdb01.homeaway.live:1433 tp-node-a.us-east-1.runtime.prod-cts.exp-aws.net"

# Extra path
export PATH=/opt/homebrew/bin:/Users/jeremiagusti/.nvm/versions/node/v20.11.1/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/local/share/dotnet:~/.dotnet/tools:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
