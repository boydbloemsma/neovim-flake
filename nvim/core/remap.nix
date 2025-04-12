{ lib, ... }: {
    vim.keymaps = [
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
}
