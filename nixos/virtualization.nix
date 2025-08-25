{...}: {
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["christiaan"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
