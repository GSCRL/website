# GSCRL website tasks
# Requires: Dart Sass standalone binary (github.com/sass/dart-sass/releases)
#           Python 3 (for local preview; usually pre-installed)
# Optional: just (command runner) - https://github.com/casey/just

set shell := ["bash", "-cu"]

# Show available recipes
default:
    @just --list

# Compile SCSS to CSS (run this after any change in assets/sass/)
build:
    sass assets/sass/main.scss assets/css/main.css --style=expanded
    sass assets/sass/noscript.scss assets/css/noscript.css --style=expanded

# Serve the site locally on http://localhost:8000
serve:
    python3 -m http.server 8000

# Compile SCSS then serve locally
dev:
    just build
    just serve
