{
  description = "TinyFileManager builder";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {

    default = pkgs.stdenv.mkDerivation {
      name = "tinyfilemanager";
      src = ./.;
      dontBuild = true;
      installPhase = ''
        mkdir -p $out
        mv tinyfilemanager.php index.php
        ${pkgs.zip}/bin/zip -r $out/tinyfilemanager.zip *.{php,json}
      '';
    };



  };
}
