{ config, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        brave
        discord
        wasistlos
        jetbrains-toolbox
        steam
        wineWowPackages.stable
        winetricks
        protontricks
        mc
    ];
}