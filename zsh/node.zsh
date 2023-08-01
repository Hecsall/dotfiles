
precmd_volta_info() {
    # Always reset the NODE_PROMPT variable before every command
    NODE_PROMPT=''

    # If no package.json or node_modules, don't display anything
    [[ -f package.json || -d node_modules ]] || return

    # Check node version to display
    # (( $+commands[volta] )) => Checks if command "volta" exists
    local node_version
    if (( $+commands[volta] )); then
        # Get current node version from volta, stripping unnecessary text
        node_version=$(volta list -c --format plain node | awk -F"[@\ ]" '/node/{print $3}' 2>/dev/null)
        [[ $node_version == "system" || $node_version == "node" ]] && return
    # elif (( $+commands[node] )); then
    #     node_version=$(node -v 2>/dev/null)
    else
        # If nvm and node not found, show an alert prompt
        NODE_PROMPT=" %F{202}$NODE_SYMBOL Node not found%f"
        return
    fi

    # Actual (success) prompt displayed
    NODE_PROMPT=" using %F{green}$NODE_SYMBOL ${node_version}%f"
}

precmd_functions+=( precmd_volta_info )