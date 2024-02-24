{
  # Hyprland
  xdg.portal.wlr.enable = true;
  programs.hyprland.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.gnome.core-utilities.enable = false;
}
