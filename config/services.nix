{ config, pkgs, ... }:

{
  # Auto-cpufreq
  services.auto-cpufreq.enable = true;

  # Flatpak
  services.flatpak.enable = true;

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
      remap = [
        {
          input = ["KEY_LEFTALT" "KEY_UP"];
          output = ["KEY_PAGEUP"];
        }
        {
          input = ["KEY_LEFTALT" "KEY_DOWN"];
          output = ["KEY_PAGEDOWN"];
        }
        {
          input = ["KEY_LEFTALT" "KEY_LEFT"];
          output = ["KEY_HOME"];
        }
        {
          input = ["KEY_LEFTALT" "KEY_RIGHT"];
          output = ["KEY_END"];
        }
      ];
    };
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;
}
