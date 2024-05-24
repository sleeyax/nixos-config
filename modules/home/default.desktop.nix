{inputs, username, host, ...}: {
  imports =
       [(import ./default.nix)]
    ++ [(import ./rider.nix)]                     # C# JetBrain editor
    # ++ [ (import ./steam.nix) ]
    ++ [(import ./discord.nix)]                   # discord with catppuccin theme
    ++ [(import ./gaming.nix)]                    # packages related to gaming
    ++ [(import ./packages.desktop.nix)]          # other desktop packages
    ++ [(import ./retroarch.nix)];                # emulator
}
