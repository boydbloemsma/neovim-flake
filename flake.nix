{
    description = "NVF configuration flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
        nvf.url = "github:notashelf/nvf";
    };

    outputs = { self, nixpkgs, nvf, ... }:
        let
            eachSystem = nixpkgs.lib.genAttrs [
                "x86_64-linux"
                "aarch64-darwin"
            ];
        in {
            packages = eachSystem (system:
                let
                    pkgs = nixpkgs.legacyPackages.${system};
                in {
                    default = (nvf.lib.neovimConfiguration {
                        inherit pkgs;
                        modules = [ ./nvim ];
                    }).neovim;
                }
            );

            # Only define nixosConfigurations if host is Linux
            nixosConfigurations = {
                nixos = nixpkgs.lib.nixosSystem {
                    modules = [
                        nvf.nixosModules.default
                    ];
                };
            };
        };
}
