{
    description = "Oro's Nix flake";
    nixos-hardware.url = "github:nixos/nixos-hardware";

    modules = {
      nixos = {
        common = [
          ./common/nix.nix
          ./common/personal.nix
	  ./common/distrobox.nix
        ];
        dev = [
          ./common/dev/podman.nix
        ];
        desktops = {
          common = [
            ./common/desktop/media.nix
            ./common/desktop/gui-apps.nix
          ];
          gnome =
            [
              ./common/desktop/gnome.nix
            ]
            ++ modules.nixos.desktops.common;
        };
        server = [];
      };
    };
}

