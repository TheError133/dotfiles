___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Python.
alias py=python3
pyenv global 3.11.9
eval "$(pyenv init -)"
# Create virtual environment with pyright configuration in current folder.
alias py_init_env='
a="venv"
echo "Creating Virtual Environment in folder \"$a\""
py -m venv "$a"
echo "Initializing PyRight configuration in pyrightconfig.json"
echo "{\"venv\": \"$a\", \"venvPath\": \".\"}" >> pyrightconfig.json
'

# Lazygit.
alias lzg=lazygit

