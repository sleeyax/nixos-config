{ pkgs, ... }: 
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    nameservers = [ "1.1.1.1" ];
    firewall = {
      enable = true;
      logRefusedPackets = true; # journalctl -kr to see logs
      allowedTCPPorts = [ 22 80 443 59010 59011 53317 ];
      allowedUDPPorts = [ 59010 59011 53317 4501 5353 ];
      # allowedUDPPortRanges = [
        # { from = 4000; to = 4007; }
        # { from = 8000; to = 8010; }
      # ];
    };
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
