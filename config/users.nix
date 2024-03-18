{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.avraham = {
    isNormalUser = true;
    description = "Avraham Ben Aram";
    extraGroups = [ "adbusers" "docker" "libvirtd" "networkmanager" "wheel" ];
  };
}
