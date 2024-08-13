{
  description = "React and Tailwind CSS development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            nodejs_18  
            nodePackages.npm
            nodePackages.yarn
            nodePackages.pnpm
            nodePackages.tailwindcss
          ];

          shellHook = ''
            echo "React and Tailwind CSS development environment"
            echo "Node.js version: $(node --version)"
            echo "npm version: $(npm --version)"
            echo "yarn version: $(yarn --version)"
            echo "pnpm version: $(pnpm --version)"
            echo "tailwindcss version: $(which tailwindcss | sed -E 's/.*-([0-9]+\.[0-9]+\.[0-9]+).*/\1/')"

            # Add node_modules/.bin to PATH
            export PATH="$PWD/node_modules/.bin:$PATH"
          '';
        };
      }
    );
}
