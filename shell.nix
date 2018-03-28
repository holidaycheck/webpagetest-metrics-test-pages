with import (fetchTarball https://github.com/nixos/nixpkgs/tarball/fc0e62a24a868111dfa5c61767d8c5978ac6801d) { };

stdenv.mkDerivation {
    name = "dev-shell";
    src = null;
    buildInputs = [ python (pkgs.python27.withPackages (pythonPackages: with pythonPackages; [
                                 requests
                               ]))];
    shellHook = "./start.sh";
}
