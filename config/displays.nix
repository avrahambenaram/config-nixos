{ config, pkgs, ... }:

{
  # Hyprland
  xdg.portal.wlr.enable = true;
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  programs.xwayland.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.gnome.core-utilities.enable = false;

  # Display manager
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --cmd sway";
        user = "greeter";
      };
    };
    vt = 2;
  };
}
