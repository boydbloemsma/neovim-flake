{ pkgs, lib, ... }:

{
  vim.theme.enable = true;
  vim.theme.name = "gruvbox";
  vim.theme.style = "light";

  vim.languages.nix.enable = true;
}
