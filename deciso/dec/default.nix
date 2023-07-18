{
  boot.kernelParams = [ "console=ttyS0,115200n8" ];

  systemd.services."serial-getty@ttyS0" = {
    enable = true;
    wantedBy = [ "multi-user.target" ];
    serviceConfig = { Restart = "always"; };
  };
}
