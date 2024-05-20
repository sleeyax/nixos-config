{ pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.systemd-boot.extraEntries."manjaro.conf" = ''
    title Manjaro
    efi   /efi/Manjaro/grubx64.efi
  '';
}
