{ pkgs, ... }:

{
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
  cava calcurse chromium curl
  docker-compose
  exfatprogs exiftool eza
  figma-linux flatpak
  gimp gnome.nautilus gparted gzip
  hollywood htop home-manager
  imv inkscape insomnia
  librewolf lynx
  nano ncdu neofetch neovim nurl ntfs3g
  obs-studio onefetch openssl
  p7zip pavucontrol pfetch pipes python3
  qbittorrent
  scrcpy spotify spotifyd steam-run
  tor-browser-bundle-bin tiv tty-clock tmux
  unstable.unimatrix unstable.vesktop unzip uwufetch
  ventoy virtualboxKvm vlc
  wget wpsoffice wtype
  yt-dlp
  zathura zsh
  ];

  # Fonts
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "UbuntuMono" ]; })
    monocraft
  ];

}
