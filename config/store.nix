{ config, pkgs, lib, ... }:

{
  # NUR
  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  # Nix store
  nix.optimise.automatic = true;

  # Garbage collector
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = ["nix-command" "flakes" ];

  nixpkgs.config.permittedInsecurePackages = [
    "freeimage-unstable-2021-11-01"
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  alacritty auto-cpufreq
  brightnessctl bash btop
  cava calcurse curl
  discord docker-compose
  exfatprogs eza
  figma-linux firefox flatpak
  gimp gnome.nautilus gparted gzip
  hollywood htop home-manager
  imv inkscape insomnia
  lynx
  nano ncdu neofetch neovim nurl ntfs3g
  obs-studio onefetch openssl
  p7zip pavucontrol pfetch pipes python3
  qbittorrent
  scrcpy spotify spotify-tui spotifyd steam-run
  tor-browser-bundle-bin tiv tty-clock tmux
  unstable.vivaldi unstable.vesktop unzip uwufetch
  vlc
  wget wpsoffice wtype
  yt-dlp
  zathura zsh

  nur.repos.avrahambenaram.unimatrix
  ];

  # Fonts
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "UbuntuMono" ]; })
    monocraft
  ];

}
