THIS_FILE="$(realpath ${BASH_SOURCE})"
THIS_DIR="$(dirname ${THIS_FILE})"

export TOP=$THIS_DIR
export GOPATH=$(dirname ${THIS_FILE})/go
export BOT=$GOPATH/src/github.com/usedbytes/mini_mouse/bot
export PATH=$GOPATH/bin:$PATH

export SYSROOT=/aux/rootfs/raspbian-jessie

alias crosscmd="CC=arm-linux-gnueabihf-gcc GOOS=linux GOARCH=arm GOARM=6 CGO_ENABLED=1 \
CGO_CFLAGS=\"--sysroot=$SYSROOT \
-I$SYSROOT/usr/include/arm-linux-gnueabihf \
-Wl,-L$SYSROOT/lib/arm-linux-gnueabihf\" \
CGO_LDFLAGS=\"-L$SYSROOT/lib/arm-linux-gnueabihf\" go \
build -v -ldflags=\"-linkmode=external -extld=arm-linux-gnueabihf-gcc\" ."
