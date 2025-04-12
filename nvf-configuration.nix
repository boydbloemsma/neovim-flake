{ pkgs, lib, ... }:

{
    vim = {
        theme = {
            enable = true;
            name = "gruvbox";
            style = "light";
        };

        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        statusline = {
            lualine = {
                enable = true;
                icons.enable = false;
                componentSeparator = {
                    left = "|";
                    right = "|";
                };
            };
        };

        git = {
            gitsigns = {
                enable = true;

                mappings = {
                    nextHunk = "]c";
                    previousHunk = "[c";
                    stageHunk = "<leader>hs";
                    resetHunk = "<leader>hr";
                    stageBuffer = "<leader>hS";
                    undoStageHunk = "<leader>hu";
                    resetBuffer = "<leader>hR";
                    previewHunk = "<leader>hP";
                    diffThis = "<leader>hd";
                    toggleDeleted = "<leader>td";
                };

                setupOpts = {
                    numhl = true;

                    signs = {
                        add.text = "A";
                        change.text = "M";
                        delete.text = "D";
                        topdelete.text = "TD";
                        changedelete.text = "CD";
                        untracked.text = "U";
                    };
                };
            };
        };

        visuals = {
            indent-blankline.enable = true;
        };

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

        lsp = {
            trouble = {
                enable = true;

                mappings = {
                    workspaceDiagnostics = "<leader>tt";
                };
                # setupOpts = {
                # };
            };
        };

        keymaps = [
            # netrw
            {
                mode = "n";
                key = "<leader>pv";
                action = "vim.cmd.Ex";
                lua = true;
            }

            # window navigation
            {
                mode = "n";
                key = "<C-h>";
                action = "<C-w><C-h>";
            }
            {
                mode = "n";
                key = "<C-j>";
                action = "<C-w><C-j>";
            }
            {
                mode = "n";
                key = "<C-k>";
                action = "<C-w><C-k>";
            }
            {
                mode = "n";
                key = "<C-l>";
                action = "<C-w><C-l>";
            }

            # window resizing
            {
                mode = "n";
                key = "<C-Up>";
                action = ":resize +2<CR>";
            }
            {
                mode = "n";
                key = "<C-Down>";
                action = ":resize -2<CR>";
            }
            {
                mode = "n";
                key = "<C-Left>";
                action = ":vertical resize +2<CR>";
            }
            {
                mode = "n";
                key = "<C-Right>";
                action = ":vertical resize -2<CR>";
            }
        ];

        options = {
            nu = true;
            relativenumber = true;
            tabstop = 4;
            softtabstop = 4;
            shiftwidth = 4;
            expandtab = true;
            smartindent = true;
            wrap = false;
            hlsearch = false;
            incsearch = true;
            termguicolors = true;
            scrolloff = 8;
            signcolumn = "yes";
            updatetime = 50;
            colorcolumn = "120";
            mouse = "";
            ignorecase = true;
        };
    };
}
