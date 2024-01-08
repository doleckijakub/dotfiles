{ config, lib, pkgs, inputs, ... }:

{
  services.xserver = {
    layout = "pl";
    xkbVariant = "";
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };

  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
    jack.enable = true;
  };

  programs.hyprland = {
    enable = true;
    # enableNvidiaPatches = true;
    xwayland.enable = true;
  };

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    nerdfonts
  ];

  environment.systemPackages = with pkgs; [
    # waybar
    hyprpaper # swww
    dunst
    libnotify
    rofi-wayland
    kitty
    
    pavucontrol
    pamixer
  ];

  programs.thunar.enable = true;

  programs.waybar = {
    enable = true;
    package = pkgs.waybar.overrideAttrs (oa: {
      mesonFlags = (oa.mesonFlags or  []) ++ [ "-Dexperimental=true" ];
      patches = (oa.patches or []) ++ [
        (pkgs.fetchpatch {
          name = "fix waybar hyprctl";
          url = "https://aur.archlinux.org/cgit/aur.git/plain/hyprctl.patch?h=waybar-hyprland-git";
          sha256 = "sha256-pY3+9Dhi61Jo2cPnBdmn3NUTSA8bAbtgsk2ooj4y7aQ=";
        })
      ];
    });
  };

}
