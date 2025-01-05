{ config, pkgs, lib, inputs, ... }:
{
  nixpkgs.overlays = [
    inputs.nur.overlays.default
    # Fixes issues with copy + paste not working in Electron applications on Wayland.
    (final: prev: {
      vscode = prev.vscode.override {
        commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";
      };
    })
  ];
}
