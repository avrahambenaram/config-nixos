{ pkgs, ... }:

{
  xdg.portal.wlr.enable = true;

  programs.xwayland.enable = true;
  programs.sway.enable = true;
  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs; [
    kdePackages.kde-gtk-config
  ];

  # Display manager
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
}
