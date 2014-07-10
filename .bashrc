export NIX_PATH=/home/dan/Code:nixos-config=/etc/nixos/configuration.nix;

# Note: NIX_PKGS is for <bracket> resolution in nix expressions.  Folder 
# .nix-defexpr is used for nix-env commands.

nix-search(){ echo "Searching..."; nix-env -qaP --description \* | grep -i "$1"; }
nix-install(){ nix-env -iA $1; }
nix-shell-unfree() {
  FLAGSAVE=$NIXPKGS_ALLOW_UNFREE;
  echo "Opening shell with NIXPKGS_ALLOW_UNFREE=1.  Original setting of $FLAGSAVE will restored on exit.";
  export NIXPKGS_ALLOW_UNFREE=1; 
  nix-shell; 
  echo "Restoring NIXPKGS_ALLOW_UNFREE=$FLAGSAVE ...";
  export NIXPKGS_ALLOW_UNFREE=$FLAGSAVE;
}
