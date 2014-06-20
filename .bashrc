nix-search(){ echo "Searching..."; nix-env -qaP --description \* | grep -i "$1"; }
