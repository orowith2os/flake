{pkgs, ...}: {
  services.xserver = {
    enable = true;
    layout = "us";
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  services.udev.packages = with pkgs; [gnome.gnome-settings-daemon];

  environment.systemPackages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.caffeine
    gnomeExtensions.containers
    gnomeExtensions.grand-theft-focus
    gnomeExtensions.gsconnect
    gnomeExtensions.rounded-window-corners
    gnomeExtensions.tophat
    gnomeExtensions.appindicator
    gnomeExtensions.pano
    gnomeExtensions.gamemode

    gnome.gnome-tweaks
  ];

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };

}
