{ config, ... }:

{
  virtualisation.docker.enable = true;

  users.users.jacob = {
    isNormalUser = true;
    description = "jacob";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = [];
  };
}
