# nix/modules/darwin.nix — auto-generated from ratatui.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.ratatui; in {
  options.services.ratatui = {
    enable = lib.mkEnableOption "ratatui";
    package = lib.mkOption { type = lib.types.package; default = pkgs.ratatui or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
