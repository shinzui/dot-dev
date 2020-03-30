#!/usr/bin/env bash
#
# shinzui/dev ellipsis package

configure_bat() {
  BAT_CONFIG_DIR="~/.config/bat"

  mkdir -p "$BAT_CONFIG_DIR/themes"

  cp Nord.tmTheme "$BAT_CONFIG_DIR/themes"

  bat cache -b
}

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
  brew install watchexec just bat fd git-delta
  brew tap caskroom/fonts
  brew cask install font-iosevka
  brew cask install font-fira-code

  configure_bat
}

pkg.link() {
  #do nothing
  echo ""
}


# pkg.push() {
#     git.push
# }

pkg.pull() {
    git.pull
    bat cache -b
}

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
