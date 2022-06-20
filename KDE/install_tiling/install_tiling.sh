#!/bin/bash

pushd Grid-Tiling-Kwin
kpackagetool5 --type KWin/Script -i ~/Grid-Tiling-Kwin
mkdir ~/.local/share/kservices5
cp ~/Grid-Tiling-Kwin/metadata.desktop ~/.local/share/kservices5/kwin-script-grid-tiling.desktop
popd
