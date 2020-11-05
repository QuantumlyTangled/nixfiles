# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

let
  hostname = import ./hostname.nix;
  user = "quantum";
in
{
  _module.args.user = user;
  _module.args.hostname = hostname;

  imports = [
    ("/home/" + user + "/nixfiles/hosts/" + hostname + "/hardware-configuration.nix")
    ./common.nix
    ("/home/" + user + "/nixfiles/hosts/" + hostname)
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    vim
    neofetch
    htop
    firefox
    pulseaudioFull
    lsof
    gparted
    bottom
  ];
  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.03"; # Did you read the comment?

}

