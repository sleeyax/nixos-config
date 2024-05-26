{ ... }: 
{
  services = {
    gvfs.enable = true;
    udisks2.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    fstrim.enable = true;
    globalprotect.enable = true;
    mullvad-vpn.enable = true;
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}
