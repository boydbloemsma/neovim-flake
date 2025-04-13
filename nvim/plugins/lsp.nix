{ lib, ... }: {
    vim = {
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
            mappings = {
                goToDefinition = "<leader>gd";
                hover = "K";
                listWorkspaceSymbols = "<leader>vws";
                openDiagnosticFloat = "<leader>vd";
                codeAction = "<leader>vca";
                listReferences = "<leader>vrr";
                renameSymbol = "<leader>vrn";
                signatureHelp = "<C-h>";
            };
            trouble = {
                enable = true;

                mappings = {
                    workspaceDiagnostics = "<leader>tt";
                    # next = "]d";
                    # previous = "[d";
                };

                setupOpts = {
                    fold_open = "v";
                    fold_closed = ">";
                    indent_lines = false;
                    signs = {
                        error = "error";
                        warning = "warn";
                        hint = "hint";
                        information = "info";
                    };
                    use_diagnostic_signs = false;
                };
            };
        };
    };
}
