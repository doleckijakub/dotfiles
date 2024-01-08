
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # c/c++
    llvmPackages_16.bintools-unwrapped llvmPackages_16.clang-unwrapped # clang
    gcc
    
    # rust
    rustc
    cargo
    rustup

    # javascript/typescript
    nodejs_20
    typescript

    # python
    python3

    # assembly
    nasm
    fasm

    # git
    git
    gh

    # debugging
    gdb
    strace

    # manpages
    man-pages
    man-pages-posix
   
    # build systems
    entr
    cmake
    gnumake
    pkg-config
    cava

    # libs
    openssl
    pkgsi686Linux.glibc pkgsi686Linux.glibc.dev
    xorg.libX11
  ];
}
