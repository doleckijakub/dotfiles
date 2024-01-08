{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = true;

  nix.settings.experimental-features = [
  	"nix-command"
	"flakes"
  ];

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [

  ];

  environment.systemPackages = with pkgs; [
    # nix
    nix-index
    home-manager
    niv
    
    # cli/tui
    neovim
    ranger
    nmap

    # posix utils
    usbutils
    coreutils
    toybox
    busybox

    # gaming
    steam
    # polymc
    minecraft

    # web
    wget
    curl
    chromium
    firefox

    # gui
    (discord.override { withOpenASAR = true; })
    spotify
    obs-studio
    feh
    mpv

    # desktop backend
    grim slurp
    pulseaudio

    # tops
    nvtop
    htop
    btop
    
    # other
    cloudflared
    whois
    docker
  ];
}
