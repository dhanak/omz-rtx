#region environment setup
_rtx_get_os() {
    os="$(uname -s)"
    if [ "$os" = Darwin ]; then
        echo "macos"
    elif [ "$os" = Linux ]; then
        echo "linux"
    else
        error "unsupported OS: $os"
    fi
}

_rtx_get_arch() {
    arch="$(uname -m)"
    if [ "$arch" = x86_64 ]; then
        echo "x64"
    elif [ "$arch" = aarch64 ] || [ "$arch" = arm64 ]; then
        echo "arm64"
    else
        error "unsupported architecture: $arch"
    fi
}

function() {
    local xdg_data_home="${XDG_DATA_HOME:-$HOME/.local/share}"
    local install_path="${RTX_INSTALL_PATH:-$xdg_data_home/rtx/bin/rtx}"
    local install_dir="$(dirname "$install_path")"

    if [[ ! -x $install_path ]]; then
        mkdir -p "$install_dir"
        curl -s "https://rtx.pub/rtx-latest-$(_rtx_get_os)-$(_rtx_get_arch)" > "$install_path"
        chmod u+x "$install_path"
    fi

    eval "$($install_path activate zsh)"
    eval "$($install_path complete --shell zsh)"
}
