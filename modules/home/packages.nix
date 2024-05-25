{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    inputs.alejandra.defaultPackage.${system}
    bitwise                           # cli tool for bit / hex manipulation
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    file                              # Show file information 
    fzf                               # fuzzy finder
    gtt                               # google translate TUI
    gtrash                            # rm replacement, put deleted files in system trash
    hexdump
    jdk17                             # java
    lazygit
    libreoffice
    cinnamon.nemo-with-extensions     # file manager
    nitch                             # systhem fetch util
    nix-prefetch-github
    ripgrep                           # grep replacement
    soundwireserver                   # pass audio to android phone
    todo                              # cli todo list
    toipe                             # typing test in the terminal
    valgrind                          # c memory analyzer
    yazi                              # terminal file manager
    youtube-dl
    gnome.zenity
    winetricks
    wineWowPackages.wayland
    bleachbit                         # cache cleaner
    cmatrix
    gparted                           # partition manager
    ffmpeg
    imv                               # image viewer
    libnotify
	  man-pages					            	  # extra man pages
    mpv                               # video player
    ncdu                              # disk space
    openssl
    pamixer                           # pulseaudio command line mixer
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    cliphist                          # clipboard manager
    poweralertd
    qalculate-gtk                     # calculator
    unzip
    wget
    xdg-utils
    xxd
    thefuck
    keepassxc                         # password manager
    teams-for-linux                   # Microsoft Teams
    globalprotect-openconnect         # GlobalProtect VPN
    logseq                            # PKM
    remmina                           # remote desktop client
    mysql-workbench                   # MySQL client
    localsend                         # local file transfer
    megasync

    # C / C++
    gcc
    gnumake

    # Python
    python3

    # JS runtimes
    nodejs_latest
  ]);
}
