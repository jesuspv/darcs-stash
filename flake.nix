# From https://ertt.ca/nix/shell-scripts/
{
  description = "git stash mimic for darcs";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url     = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, flake-utils, nixpkgs, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        bin  = pkgs.writeScriptBin name (builtins.readFile ./${name});
        name = "darcs-stash";
        path = bin.overrideAttrs(old: {
            buildCommand = "${old.buildCommand}\n patchShebangs $out";
            });
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        overlays.default     = self.overlays.${system}.${name};
        overlays.darcs-stash = final: prev: {
          darcs-stash = self.packages.${system}.default;
        };

        packages.default     = self.packages.${system}.${name};
        packages.darcs-stash = pkgs.symlinkJoin {
          name        = name;
          paths       = [ path pkgs.coreutils pkgs.darcs ];
          buildInputs = [ pkgs.makeWrapper ];
          postBuild   = "wrapProgram $out/bin/${name} --prefix PATH : $out/bin";
        };
      }
    );
}
