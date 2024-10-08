# Pipe my public key to my clipboard.
alias sshkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"