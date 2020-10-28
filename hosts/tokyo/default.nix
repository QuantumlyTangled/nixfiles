{ config, pkgs, lib, user, ... }:

{
  imports =
    [
      ../../bare-metal.nix
      ../../modules/desktops/kdeplasma.nix
      ../../client.nix
    ];

  services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.displayManager.gdm.wayland = false;

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp4s0.useDHCP = true;

  nixpkgs.config.allowUnfree = true;
}
