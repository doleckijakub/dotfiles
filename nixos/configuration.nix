{ config, lib, pkgs, ... }:

{
  imports =
  [
    ./hardware-configuration.nix
    ./boot.nix
    ./unix.nix
    ./users.nix

    ./packages.nix
    ./dev-packages.nix

    ./desktop.nix
    ./nvidia.nix
    ./environment.nix
    # ./wayland.nix
  ];

  services.openssh = {
    enable = true;
#    settings.passwordAuthentication = true;
  };

  system.stateVersion = "23.05";

}
