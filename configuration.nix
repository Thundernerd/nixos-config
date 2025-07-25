{ config, pkgs, ... } :

{
    imports = [
        ./hardware-configuration.nix
        ./modules
        ./programs
    ];

    system.stateVersion = "25.05";
}