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

  # Enable CUPS to print documents.
  services.printing.enable = true;
}
