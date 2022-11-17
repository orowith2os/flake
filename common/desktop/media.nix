
{pkgs, ...}: {
  sound.enable = false;

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    jack.enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
  };

  hardware.bluetooth.enable = true;

  fonts.fonts = with pkgs; [
    (nerdfonts.override {fonts = ["Hasklig"];})
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
  ];
}
