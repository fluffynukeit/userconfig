nix-search(){ echo "Searching..."; nix-env -f ~/Code/nixpkgs -qaP --description \* | grep -i "$1"; }
nix-install(){ nix-env -f ~/Code/nixpkgs -iA $1; }
