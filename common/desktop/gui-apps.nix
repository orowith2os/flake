{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    discord
  ];

  services.flatpak.enable = true;
  xdg.portal.enable = true;
}
