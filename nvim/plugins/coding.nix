{ lib, ... }: {
    vim = {
        autocomplete = {
            nvim-cmp.enable = true;
        };

        visuals = {
            indent-blankline.enable = true;
        };
    };
}
