#!/usr/bin/env bash
#
# shinzui/dev ellipsis package

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
  brew install watchexec just
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
