{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "Sleeyax";
    userEmail = "yourd3veloper@gmail.com";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  # home.packages = [ pkgs.gh pkgs.git-lfs ];
}
