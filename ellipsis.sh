#!/usr/bin/env bash
#
# shinzui/dev ellipsis package

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
  brew install watchexec just
  brew tap caskroom/fonts
  brew cask install font-iosevka
  brew cask install font-fira-code
}

# pkg.push() {
#     git.push
# }

# pkg.pull() {
#     git.pull
# }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
