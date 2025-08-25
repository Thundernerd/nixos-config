{...}: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # enable Firefox by default
  programs.firefox.enable = true;

  programs._1password-gui = {
    polkitPolicyOwners = ["christiaan"];
  };

  programs.partition-manager.enable = true;
}
