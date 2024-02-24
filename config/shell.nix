{ config, pkgs, ... }:

{
  # Permissible user shells
  environment.shells = with pkgs; [
    bash
    zsh
  ];

  # ZSH configuration
  programs.zsh = {
    enable = true;
  };
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.ohMyZsh = {
    enable = true;
    plugins = [ "git" "python" "man" ];
    theme = "bira";
  };
}
