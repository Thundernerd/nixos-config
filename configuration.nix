{ config, pkgs, ... } :

{
    imports = [
        ./hardware-configuration.nix
        ./modules
        ./programs
    ];
}