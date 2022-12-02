flake: { config, lib, pkgs, ... }:

let
  inherit (lib) filterAttrs types mkEnableOption mkOption;

  inherit (flake.packages.${pkgs.stdenv.hostPlatform.system}) pkg_name;

  cfg = config.services.pkg_name;
in
{
  options.services.pkg_name = {
    # Configure options available to the module.
    enable = mkEnableOption ''
      Service Name
    '';
    example_option = mkOption { default = "Pls visit the-xpert.me"; type = types.str; };
  };

  config = lib.mkIf cfg.enable {
    systemd.services.pkg_name = {
      description = "Service Description";

      after = [ "network-online.target" ];
      wantedBy = [ "multi-user.target" ];

      serviceConfig = {
        # Provide select user for this service according to the needs
        User = "root";
        Restart = "on-failure";
        ExecStart = "${pkg_name}/bin/pkg_name ${cfg.example_option}";
        StateDirectory = "pkg_name";
        StateDirectoryMode = "0750";
      };
    };
  };
}
