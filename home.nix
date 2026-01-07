{ config, pkgs, inputs, ...  }:

{
  # Home manager settings
  home.username = "nixon";
  home.homeDirectory = "/home/nixon";
  home.stateVersion = "25.11";

  # Packages to install for user
  home.packages = with pkgs; [
    neovim
    helix
    htop
    tree
    ripgrep
    fzf
  ];

  # Shell configurations for bash
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -la";
      update = "sudo nixos-rebuild switch --flake .";
    };
  };
  # Git configuration
  # TODO

  # Let home-manager install and manage itself
  programs.home-manager.enable = true;
}
