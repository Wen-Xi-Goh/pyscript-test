# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    # pkgs.go
    # pkgs.python311
    # pkgs.python311Packages.pip
    # pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
    pkgs.python313Full
  ];
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
 "angular.ng-template"
      # "vscodevim.vim"
    ];
    previews = {
      enable = true;
      previews = {
        web = {
          # Command to serve files. This command uses Python's built-in HTTP server.
          command = ["python3" "-m" "http.server" "$PORT"];
          manager = "web"; # Use the 'web' manager for web previews
        };
      };
    };
    # Enable previews
  };
}
