{
  description = "Avraham's Nixos Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    evremap.url = "github:avrahambenaram/evremap";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, evremap, ... } @ inputs:
  let
    system = "x86_64-linux";
    overlay-unstable = final: prev: {
      unstable = nixpkgs-unstable.legacyPackages.${prev.system};
    };
  in 
  {
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = inputs;
      modules = [
        evremap.nixosModules.default
        ({ config, pkgs, ... }: { nixpkgs.overlays = [ overlay-unstable ]; })
        ./configuration.nix
      ];
    };
  };
}
