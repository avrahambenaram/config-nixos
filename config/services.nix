{ config, pkgs, ... }:

{
  # Auto-cpufreq
  services.auto-cpufreq.enable = true;

  # Flatpak
  services.flatpak.enable = true;

  # Tor
  services.tor = {
    enable = true;
    openFirewall = true;
    relay = {
      enable = true;
      role = "relay";
    };
    settings = {
      ContactInfo = "souzaavraham@gmail.com";
      Nickname = "Avraham";
      ORPort = 9001;
      ControlPort = 9051;
      BandWidthRate = "1 MBytes";
    };
  };

  services.evremap = {
    enable = true;
    settings = {
      device_name = "AT Translated Set 2 keyboard";
      dual_role = [
        {
          input = "KEY_LEFTCTRL";
          tap = ["KEY_CAPSLOCK"];
          hold = ["KEY_CAPSLOCK"];
        }
        {
          input = "KEY_CAPSLOCK";
          tap = ["KEY_ESC"];
          hold = ["KEY_LEFTCTRL"];
        }
      ];
    };
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;
}
