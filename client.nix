{ config, pkgs, user, ... }:

{
  system.activationScripts.flatpak-initialise = import ./modules/flatpak.nix {
    inherit config;
    inherit pkgs;
    inherit user;
  };
}
