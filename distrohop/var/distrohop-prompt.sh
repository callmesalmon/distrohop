get_shell() {
    if [ -z ${SHELL}+x ]; then
        echo "[ERROR] \$SHELL variable not defined!"
        echo "Exiting..."
        exit 2
    fi
    return $(which $SHELL)
}

if [ get_shell -eq "zsh" ]; then
    # {green-fg}user@platform{grey-bg}dir{transparent-bg}$
    DISTROHOP_DEFAULT_PROMPT="%F{#008000}%B%n@%m%b %K{#3a3a3a}%1~%k$%f "
elif [ get_shell -eq "bash" ] || [ get_shell -eq "sh" ]; then
    # [Weekday Month Day Hours:Minutes:Seconds] user@platform
    # dir$
    DISTROHOP_DEFAULT_PROMPT="[\d \t] \u@\h\n\w\$"
else
    # This is the more portable prompt, but it sure as fuck
    # isn't as good as the two others. But that's how it is.
    DISTROHOP_DEFAULT_PROMPT="$(whoami): $(pwd)$"
fi
