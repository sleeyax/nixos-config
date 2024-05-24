{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    prismlauncher                     # minecraft launcher
  ]);
}
