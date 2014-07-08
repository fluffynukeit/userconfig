nix-search(){ echo "Searching..."; nix-env -f ~/Code/nixpkgs -qaP --description \* | grep -i "$1"; }
nix-install(){ nix-env -f ~/Code/nixpkgs -iA $1; }
nix-shell-unfree() {
  FLAGSAVE=$NIXPKGS_ALLOW_UNFREE;
  echo "Opening shell with NIXPKGS_ALLOW_UNFREE=1.  Original setting of $FLAGSAVE will restored on exit.";
  export NIXPKGS_ALLOW_UNFREE=1; 
  nix-shell; 
  echo "Restoring NIXPKGS_ALLOW_UNFREE=$FLAGSAVE ...";
  export NIXPKGS_ALLOW_UNFREE=$FLAGSAVE;
}
