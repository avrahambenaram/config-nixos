# Edit this configuration file to define what should be installed on
# toradmin@example.orgyour system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./config/bootloader.nix
    ./config/displays.nix
    ./config/i18n.nix
    ./config/locals.nix
    ./config/network.nix
    ./config/programs.nix
    ./config/services.nix
    ./config/shell.nix
    ./config/sound.nix
    ./config/store.nix
    ./config/users.nix
    ./config/virtualisation.nix
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

  security.pam.services.swaylock = {};
}
