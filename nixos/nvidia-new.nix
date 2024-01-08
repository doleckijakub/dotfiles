{ config, libs, pkgs, ... }:

#let unstable = # import <nixos-unstable>
#{
#  config.allowUnfreePredicate = pkg:
#    builtins.elem (lib.getName pkg) [ "nvidia-x11" "nvidia-settings" ];
#  };
#in
{
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
#  boot.kernelPackages = unstable.pkgs.linuxPackages_production;

  hardware.nvidia = {
    modesetting.enable = true;
#    powerManagement = {
#      enable = false;
#      finegrained = false;
#    };
    open = false; # true
    nvidiaSettings = true;
#    package = config.boot.kernelPackages.nvidiaPackages.production;
  };

#  nixpkgs.config.allowUnfree = true;

  environment = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSOR = "1";
      NIXOS_OZONE_WL = "1";
    };
#    systemPackages = with pkgs; [
#      nvidia-x11
#      nvidia-settings
#      nvidia-persistenced
#      nvtop
#    ];
  };
}
    
