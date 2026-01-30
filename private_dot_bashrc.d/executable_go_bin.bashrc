# set GO bin dir
if [ -x "$(command -v go)" ]; then
    PATH="$PATH:$(go env GOPATH)/bin"
fi
