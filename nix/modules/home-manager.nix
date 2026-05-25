# nix/modules/home-manager.nix — auto-generated from ratatui.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.ratatui; in {
  options.programs.ratatui = {
    enable = lib.mkEnableOption "ratatui";
    package = lib.mkOption { type = lib.types.package; default = pkgs.ratatui or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
