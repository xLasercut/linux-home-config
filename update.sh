#!/bin/bash

function _display_message() {
  echo "--------------------------------"
  echo $1
  echo "--------------------------------"
}


_display_message "UPDATING FONTS"

pushd ./.fonts
curl -fLo "JetBrains Mono Medium Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Medium/complete/JetBrains%20Mono%20Medium%20Nerd%20Font%20Complete%20Mono.ttf
curl -fLo "JetBrainsMono-Bold.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Bold.ttf
curl -fLo "JetBrainsMono-BoldItalic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-BoldItalic.ttf
curl -fLo "JetBrainsMono-ExtraBold.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-ExtraBold.ttf
curl -fLo "JetBrainsMono-ExtraBoldItalic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-ExtraBoldItalic.ttf
curl -fLo "JetBrainsMono-ExtraLight.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-ExtraLight.ttf
curl -fLo "JetBrainsMono-ExtraLightItalic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-ExtraLightItalic.ttf
curl -fLo "JetBrainsMono-Italic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Italic.ttf
curl -fLo "JetBrainsMono-Light.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Light.ttf
curl -fLo "JetBrainsMono-LightItalic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-LightItalic.ttf
curl -fLo "JetBrainsMono-Medium.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Medium.ttf
curl -fLo "JetBrainsMono-MediumItalic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-MediumItalic.ttf
curl -fLo "JetBrainsMono-Regular.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Regular.ttf
curl -fLo "JetBrainsMono-SemiBold.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-SemiBold.ttf
curl -fLo "JetBrainsMono-SemiBoldItalic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-SemiBoldItalic.ttf
curl -fLo "JetBrainsMono-Thin.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Thin.ttf
curl -fLo "JetBrainsMono-ThinItalic.ttf" https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-ThinItalic.ttf
popd

