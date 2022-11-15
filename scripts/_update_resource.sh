#!/bin/bash

function _update_help() {
  echo
  echo "linux_setup update <command>"
  echo
  echo "commands:"
  echo "  help      - this help screen"
  echo "  fonts     - update fonts to latest version"
  echo
}

function _update() {
  local command=$1

  case $command in
  "fonts") _update_fonts ;;
  "themes") _update_themes ;;
  *) _update_help ;;
  esac
}

function _update_nordic_theme() {
  local git_dir="$TMP_DIR/nordic-git"
  local latest_release

  echo "Fetching latest release for: EliverLara/Nordic"

  latest_release=$(curl -s "https://api.github.com/repos/EliverLara/Nordic/releases/latest" | jq -r .tag_name)

  echo "Latest release is: ${latest_release}"

  echo "Updating KDE themes"

  git clone --branch "$latest_release" https://github.com/EliverLara/Nordic.git "$git_dir"
  cp -r "${git_dir}/kde/aurorae/." "$AURORAE_DIR/themes/"
  cp -r "${git_dir}/kde/colorschemes/." "$COLORSCHEMES_DIR/"

  echo "Updating GTK Themes"
  wget -q "https://github.com/EliverLara/Nordic/releases/download/${latest_release}/Nordic-darker.tar.xz" -P "$TMP_DIR"
  tar -xf "$TMP_DIR/Nordic-darker.tar.xz" -C "$THEMES_DIR"
}

function _update_arc_theme() {
  local git_dir="$TMP_DIR/arc-git"
  local latest_release

  echo "Fetching latest release for: PapirusDevelopmentTeam/arc-kde"

  latest_release=$(curl -s "https://api.github.com/repos/PapirusDevelopmentTeam/arc-kde/releases/latest" | jq -r .tag_name)

  echo "Latest release is: ${latest_release}"

  echo "Updating KDE themes"

  git clone --branch "$latest_release" https://github.com/PapirusDevelopmentTeam/arc-kde.git "$git_dir"
  cp -r "${git_dir}/aurorae/themes/." "$AURORAE_DIR/themes/"
  cp -r "${git_dir}/color-schemes/." "$COLORSCHEMES_DIR/"
  cp -r "${git_dir}/plasma/look-and-feel/." "$LOOK_AND_FEEL_DIR/"
}

function _update_themes() {
  _display_message "UPDATING THEMES"
  rm -rf "$TMP_DIR"

  rm -rf "$AURORAE_DIR"
  rm -rf "$COLORSCHEMES_DIR"
  rm -rf "$LOOK_AND_FEEL_DIR"
  mkdir -p "$AURORAE_DIR"
  mkdir -p "$COLORSCHEMES_DIR"
  mkdir -p "$LOOK_AND_FEEL_DIR"
  rm -rf "$THEMES_DIR"
  mkdir -p "$THEMES_DIR"

  _update_nordic_theme
  _update_arc_theme

  echo "Complete"
}

function _update_fonts() {
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
}
