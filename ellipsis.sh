#!/usr/bin/env bash
#
# shinzui/dev ellipsis package

configure_bat() {
  BAT_CONFIG_DIR="$(bat cache --config-dir)"

  mkdir -p "$BAT_CONFIG_DIR/themes"

  cp Nord.tmTheme "$BAT_CONFIG_DIR/themes"

  bat cache --init

}

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
  brew install watchexec just bat fd
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
    bat cache --init
}

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
