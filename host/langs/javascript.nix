{ pkgs, ... }:

{
  environment.systemPackages= with pkgs; [
    nodejs_22
    ts-node
    typescript
  ];
}
