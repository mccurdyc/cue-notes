# https://nixos.wiki/wiki/Flakes#Super_fast_nix-shell
{pkgs, pkgs-unstable}:
  pkgs.mkShell {
    buildInputs = [
      pkgs.nixpkgs-fmt
      pkgs.rnix-lsp
      pkgs.statix

      pkgs-unstable.cue
      pkgs-unstable.cuelsp
      pkgs-unstable.cuetools
    ];
  }
