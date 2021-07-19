## Inofficial Lens-3.6.5.AppImage package for nixos.
#### due to desktop config in official nix package.
1. ###### Download AppImage
2. ###### Wrap it and pack it (https://nixos.org/manual/nixpkgs/stable/#ssec-pkgs-appimageTools-wrapping). What is basically the k8slens.nix
3. ###### nix-prefetch-url $Download-URL
4. ###### nix-build k8slens.nix
5. ###### ./result/bin/k8slens
6. ###### follow instructions
