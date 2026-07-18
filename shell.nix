{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  packages = with pkgs; [
    gcc
    gnumake
    pkg-config
    SDL2
    SDL2_image
    SDL2_ttf
  ];
}
