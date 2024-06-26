{ pkgs, ... }: 
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      # nix language
      bbenoist.nix
      # nix-shell suport 
      arrterian.nix-env-selector
      # Color theme
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons
      pkief.material-icon-theme
    ];
    userSettings = {
      "update.mode" = "none";
      "extensions.autoUpdate" = true;
      "files.autoSave" = "onWindowChange";
      "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font', 'SymbolsNerdFont'";
      "catppuccin.accentColor" = "lavender";
      "vsicons.dontShowNewVersionMessage" = true;
      
      "window.titleBarStyle" = "custom"; # needed otherwise vscode crashes, see https://github.com/NixOS/nixpkgs/issues/246509
      "window.menuBarVisibility" = "toggle";
      
      "editor.minimap.enabled" = true;
      "editor.fontLigatures" = false;
      "editor.fontSize" = 16;
      "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'SymbolsNerdFont', 'monospace', monospace";
      "editor.formatOnSave" = true;
      "editor.formatOnPaste" = true;
      "editor.renderControlCharacters" = false;
      "editor.scrollbar.horizontal" = "hidden";
      "editor.scrollbar.verticalScrollbarSize" = 2;
      "editor.scrollbar.horizontalScrollbarSize" = 2;
      "editor.scrollbar.vertical" = "hidden";
      "editor.mouseWheelZoom" = true;
      
      "diffEditor.renderSideBySide" = false;

      "workbench.startupEditor" = "none";
      "workbench.colorTheme" = "Catppuccin Mocha";
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.layoutControl.type" = "menu";
      "workbench.editor.limit.enabled" = true;
      "workbench.editor.limit.value" = 20;
      "workbench.editor.limit.perEditorGroup" = true;
      "workbench.editor.showTabs" = "multiple";
      "workbench.activityBar.location" = "left";
      "workbench.statusBar.visible" = true;
      "workbench.layoutControl.enabled" = false;

      "git.enableSmartCommit" = true;
      "git.confirmSync" = false;

      "gitlens.currentLine.enabled" = false;
      # disable gitlens taking over CTRL + SHIFT+ G shortcut to navigate to source control
      "gitlens.keymap" = "none";

      "github.copilot.enable" = {
        "*" = true;
        "markdown" = true;
      };
    };
    # Keybindings
    keybindings = [
      {
        key = "ctrl+s";
        command = "workbench.action.files.saveFiles";
      }
      {
        key = "alt+t";
        command = "workbench.action.terminal.toggleTerminal";
      }
      {
        key = "alt+left";
        command = "workbench.action.navigateBack";
      }
      {
        key = "alt+right";
        command = "workbench.action.navigateForward";
      }
      {
        key = "alt+enter";
        command = "editor.action.quickFix";
      }
    ];
  };
}
