#!/bin/bash
set -e

source sourceme.sh

set -x

# ======
# yapidh
# ======
pushd $TOP
git clone git@github.com:usedbytes/yapidh.git -b master
popd

# ======
# Golang
# ======
mkdir -p $GOPATH/src/github.com
pushd $GOPATH/src/github.com

mkdir -p jochenvg
pushd jochenvg
git clone git@github.com:jochenvg/go-udev.git
cd go-udev
# FIXME: Update input2 to be compatible with master
git checkout b7a82d7b755ee9b24b4a4
popd

mkdir -p gvalkov
pushd gvalkov
git clone git@github.com:usedbytes/golang-evdev.git -b ff-dev
popd

# My modules
mkdir -p usedbytes
pushd usedbytes
git clone git@github.com:usedbytes/input2.git -b dev
git clone git@github.com:usedbytes/linux-led.git
git clone git@github.com:usedbytes/battery.git

mkdir -p mini_mouse
pushd mini_mouse
git clone git@github.com:usedbytes/mini_mouse-bot.git bot
popd
popd

popd

echo -e '\nRemember to source sourceme.sh!\n'
