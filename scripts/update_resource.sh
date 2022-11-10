#!/bin/bash

source "./_helpers.sh"
source "./_constants.sh"

_display_message "UPDATING FONTS"

echo "Download fonts to ${FONTS_DIR}..."

cd "${FONTS_DIR}" || return 1

jetbrains_mono_fonts=(
  "JetBrainsMono-Bold.ttf"
  "JetBrainsMono-BoldItalic.ttf"
  "JetBrainsMono-ExtraBold.ttf"
  "JetBrainsMono-ExtraBoldItalic.ttf"
  "JetBrainsMono-ExtraLight.ttf"
  "JetBrainsMono-ExtraLightItalic.ttf"
  "JetBrainsMono-Italic.ttf"
  "JetBrainsMono-Light.ttf"
  "JetBrainsMono-LightItalic.ttf"
  "JetBrainsMono-Medium.ttf"
  "JetBrainsMono-MediumItalic.ttf"
  "JetBrainsMono-Regular.ttf"
  "JetBrainsMono-SemiBold.ttf"
  "JetBrainsMono-Thin.ttf"
  "JetBrainsMono-ThinItalic.ttf"
)

for font in "${jetbrains_mono_fonts[@]}"; do
  echo ""
  echo "Downloading ${font}..."
  curl -fLo "${font}" "${JETBRAINS_MONO_FONTS_GITHUB}/${font}"
done

echo ""
echo "Downloading JetBrains Mono Medium Nerd Font Complete Mono.ttf..."
curl -fLo "JetBrains Mono Medium Nerd Font Complete Mono.ttf" "${NERD_FONTS_GITHUB}/JetBrains%20Mono%20Medium%20Nerd%20Font%20Complete%20Mono.ttf"

echo "Complete"
