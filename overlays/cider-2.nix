# overlays/cider-2.nix
final: prev: {
  cider-2 = prev.callPackage ../pkgs/cider-2 {};
}
