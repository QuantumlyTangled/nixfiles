{ config, pkgs, user, ... }:

{
  imports = [
    ./modules/flatpak.nix
  ];

  services.resolved.enable = true;
  services.resolved.fallbackDns = [ "1.1.1.1" "8.8.8.8" ];

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio = {
    support32Bit = true;
    package = pkgs.pulseaudioFull;

    # Discover PulseAudio sinks on the local network
    zeroconf.discovery.enable = true;
  };

}
