{pkgs, ...}: {
  users.users.oro = {
    description = "Oro";
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = ["wheel" "users" "audio" "video"];
    uid = 1000;
  };

  security.sudo.wheelNeedsPassword = false;

  environment = {
    systemPackages = with pkgs; [home-manager];
  };
}
