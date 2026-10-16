{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  env.GREET = "devenv";
  packages = [
    pkgs.terraform-docs
  ];
}
