{ config, pkgs, username, ... }:
{
  users.users.${username}.extraGroups = [ "libvirtd" "docker" ];

  environment.systemPackages = with pkgs; [
    virt-manager
    virt-viewer
    spice spice-gtk
    spice-protocol
    win-virtio
    win-spice
    adwaita-icon-theme
  ];

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    docker.enable = true;
    spiceUSBRedirection.enable = true;
    containers.enable = true;
  };
  services.spice-vdagentd.enable = true;
}
