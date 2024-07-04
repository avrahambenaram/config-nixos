{ config, pkgs, ... }:

{
  xdg.portal.wlr.enable = true;

  programs.xwayland.enable = true;
  programs.sway.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Display manager
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
}
