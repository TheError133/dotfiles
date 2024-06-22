___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Python executable.
alias py=python3
pyenv global 3.11.9
eval "$(pyenv init -)"

# Lazygit.
alias lzg=lazygit

