#! /usr/bin/env zsh
if [ -f jdt-language-server-latest.tar.gz ]; then
    ./mvnw -Djdt.js.server.root=$HOME/.emacs.d/eclipse.jdt.ls/server/ -Djunit.runner.root=$HOME/.emacs.d/eclipse.jdt.ls/test-runner/ -Djunit.runner.fileName=junit-platform-console-standalone.jar -Djava.debug.root=$HOME/.emacs.d/eclipse.jdt.ls/server/bundles clean package -Djdt.download.url=file://$PWD/jdt-language-server-latest.tar.gz
else
    echo please run the command below:
    echo wget https://download.eclipse.org/jdtls/snapshots/jdt-language-server-latest.tar.gz
fi
