{...}: {
  users.users = {
    christiaan = {
      initialPassword = "password";
      isNormalUser = true;
      extraGroups = ["networkmanager" "wheel"];
    };
  };
}
