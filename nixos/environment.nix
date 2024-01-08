{
  environment = {
    localBinInPath = true;
    sessionVariables = rec {
      EDITOR = "nvim";
      NIX_SHELL_PRESERVE_PROMPT = "1";

      # xdg
      XDG_CACHE_HOME  = "$HOME/.cache";
      XDG_CONFIG_HOME = "$HOME/.config";
      XDG_DATA_HOME   = "$HOME/.local/share";
      XDG_STATE_HOME  = "$HOME/.local/state";
      XDG_BIN_HOME    = "$HOME/.local/bin";

      PATH = [
        "${XDG_BIN_HOME}"
      ];
    };
  };
}

