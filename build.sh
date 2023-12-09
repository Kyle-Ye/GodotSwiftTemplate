#!/bin/zsh

build() {
    swift build --configuration $1
    cp -f .build/$1/libGodotKit.dylib ../SimpleRunner/bin/$1/libGodotKit.dylib
    cp -f .build/$1/libSwiftGodot.dylib ../SimpleRunner/bin/$1/libSwiftGodot.dylib
}

cd GodotKit

if [[ $1 == "debug" ]]; then
build "debug"
elif [[ $1 == "debug" ]]; then
build "release"
else
build "debug"
build "release"
fi
