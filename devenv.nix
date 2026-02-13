{
  pkgs,
  lib,
  config,
  ...
}:
{
  languages = {
    typescript.enable = true;
    javascript = {
      enable = true;
      npm = {
        enable = true;
        install.enable = true;  # This installs Astro deps from package.json
      };
    };
  };

  processes = {
    astro.exec = "npm run dev";
  };

  # See full reference at https://devenv.sh/reference/options/
}
