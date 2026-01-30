if ! ps -ef | grep "[s]sh-agent" &>/dev/null; then
    echo Starting SSH Agent
    eval $(ssh-agent -s)
fi

if ! ssh-add -l &>/dev/null; then
    echo Adding keys...
    ssh-add -t 1d
fi
