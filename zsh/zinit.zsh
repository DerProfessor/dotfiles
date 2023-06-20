# Initialize zinit
source "$ZINIT_HOME/zinit.zsh"

# Load powerlevel10k theme
zinit ice depth"1"
zinit light romkatv/powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.zsh/p10k.zsh ]] || source ~/.zsh/p10k.zsh

######                 #####
##   Oh-my-zsh plugins    ##
######                 #####
