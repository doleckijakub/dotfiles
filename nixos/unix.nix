{ config, ... }:

{
  networking.hostName = "nixos";
  time.timeZone = "Europe/Warsaw";
  console.keyMap = "pl2";
  
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_MEASUREMENT = "pl_PL.UTF-8";
    };
  };
}
