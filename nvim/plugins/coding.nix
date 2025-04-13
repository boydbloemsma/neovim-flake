{ lib, ... }: {
    vim = {
        autocomplete = {
            blink-cmp = {
                enable = true;

                mappings = {
                    next = "<C-n>";
                    previous = "<C-p>";
                };
            };
        };

        visuals = {
            indent-blankline.enable = true;
        };
    };
}
