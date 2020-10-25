{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/20.09-beta.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ruby
    pkgs.bundler
  ];
}

# https://github.com/sass/sassc-ruby/issues/148
# temporary fix:
# bundle config build.sassc --disable-lto