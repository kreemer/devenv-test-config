{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:
let
  pkgs-terraform-docs = import inputs.nixpkgs-terraform-docs {
    system = pkgs.stdenv.hostPlatform.system;
  };
in
{
  env.GREET = "devenv";
  packages = [
    pkgs-terraform-docs.terraform-docs
  ];
}
