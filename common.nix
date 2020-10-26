{ config, pkgs, lib, user, hostname, ... }:

{
  users.extraUsers = {
    ${user} = {
      password = "change-me";
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
        "audio"
        "sound"
        "input"
        "video"
        "tty"
      ];
    };
  };
}
