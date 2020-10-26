{ config, pkgs, lib, user, ... }:

{
  imports =
    [
      ../../bare-metal.nix
      ../../client.nix
    ];
}
