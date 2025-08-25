# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  outputs,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  # TODO: Set your username
  home = {
    username = "christiaan";
    homeDirectory = "/home/christiaan";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [ steam ];
  home.packages = with pkgs; [
    fastfetch
    zip
    xz
    unzip
    p7zip
    eza
    fzf
    which
    gnupg
    btop
    discord
    wasistlos
    _1password-cli
    _1password-gui
    proton-pass
    vivaldi
    steam
    protontricks
    dotnet-sdk
    unityhub
    jetbrains.rider
    vscode
    avalonia-ilspy
    alejandra
    nixd
    nil
    protonplus
    gnome-boxes
    cider-2
    nodejs
    feishin
    nextcloud-client
    gitui
    avalonia-ilspy
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Explicitly disable firefox
  programs.firefox.enable = false;

  programs.git.enable = true;
  programs.git.userName = "Christiaan Bloemendaal";
  programs.git.userEmail = "github@tnrd.net";

  programs.bash.enable = true;
  programs.bash.enableCompletion = true;

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        IdentityAgent ~/.1password/agent.sock

    '';
  };

  home.sessionVariables = {
    WEBKIT_DISABLE_COMPOSITING_MODE = 1;
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "25.05";
}
