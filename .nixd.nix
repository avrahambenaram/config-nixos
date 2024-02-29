# .nixd.nix
{
  eval = {
    target = {
      args = [];
      installable = ".#nixosConfigurations.nixos";
    };
    # Force thunks
    depth = 4;
  };
  formatting.command = "nixpkgs-fmt";
  options = {
    enable = true;
    target = {
      args = [ ];
      # home-manager configuration
      installable = ".#nixosConfigurations.nixos.options";
    };
  };
}

