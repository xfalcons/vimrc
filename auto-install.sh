#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

git clone https://github.com/xfalcons/vimrc.git "$VIMHOME"
cd "$VIMHOME"
git submodule update --init

./install-vimrc.sh

# cd bundle/command-t/ruby/command-t
# (ruby extconf.rb && make) || warn "Can't compile Command-T."

echo "Linux-Ubuntu vimrc is installed."
