
precmd_pythonvenv_info() {
    PYTHON_VENV_PROMPT=''

    if  [[ -v VIRTUAL_ENV ]]; then
        venv=${VIRTUAL_ENV:t:r}
        PYTHON_VENV_PROMPT="%F{220}%B$venv%b%f "
    fi
}

precmd_functions+=( precmd_pythonvenv_info )