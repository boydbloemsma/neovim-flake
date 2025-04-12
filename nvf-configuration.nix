{ pkgs, lib, ... }:

{

        vim = {
                theme = {
                        enable = true;
                        name = "gruvbox";
                        style = "light";
                };

                statusline.lualine.enable = true;
                telescope.enable = true;
                autocomplete.nvim-cmp.enable = true;

                languages = {
                        enableLSP = true;
                        enableTreesitter = true;

                        nix.enable = true;
                        php.enable = true;
                        lua.enable = true;
                        html.enable = true;
                        markdown.enable = true;
                        ts.enable = true;
                };
        };
}
