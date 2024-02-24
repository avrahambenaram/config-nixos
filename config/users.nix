{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.avraham = {
    isNormalUser = true;
    description = "Avraham Ben Aram";
    extraGroups = [ "docker" "libvirtd" "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    ];
  };
}
