{ config, pkgs, user, ... }:

{
  # Flatpak support: https://github.com/NixOS/nixpkgs/pull/33371
  services.flatpak.enable = true;

  system.activationScripts.flatpak-install = import ../scripts/flatpak-install.nix {
    inherit pkgs;
    inherit user;
    flatpakPackages = [
      "com.discordapp.Discord"
      "com.github.wwmm.pulseeffects"
      "com.spotify.Client"
      "com.ulduzsoft.Birdtray"
      "org.blender.Blender"
      "org.darktable.Darktable"
      "org.filezillaproject.Filezilla"
      "org.gimp.GIMP"
      "org.kde.konversation"
      "org.kde.krita"
      "org.libreoffice.LibreOffice"
      "org.mozilla.Thunderbird"
      "org.octave.Octave"
      "org.videolan.VLC"
    ];
  };
}
