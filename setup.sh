#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
cat ~/.bash_profile >> ~/.zshrc && rm ~/.bash_profile
sdk install java
sdk install gradle
sdk install kotlin

brew tap thought-machine/please

brew install  \
    python \
    node \
    yarn \
    git \
    sqlite \
    go \
    please

brew cask install \
    docker \
    whatsapp \
    authy \
    visual-studio \
    visual-studio-code \
    atom \
    firefox \
    google-chrome \
    spotify \
    intellij-idea-ce \
    clockify \
    lastpass \
    sourcetree \
    postman \
    slack \
    google-drive-file-stream \
    google-photos-backup-and-sync \
    iterm2 \
    awscli \
    google-cloud-sdk \
    dotnet


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

./Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code \
    --install-extension ms-python.python \
    --install-extension ms-vscode.csharp \
    --install-extension ms-vscode.Go \
    --install-extension ms-vscode-remote.remote-containers \
    --install-extension please-build.plz-vscode
    --install-extension fwcd.kotlin \
    --install-extension leo-labs.dotnet