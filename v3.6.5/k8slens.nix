with import <nixpkgs> {};

appimageTools.wrapType2 {
    name = "k8slens"; 
    src = fetchurl { 
        url =  https://github.com/lensapp/lens/releases/download/v3.6.5/Lens-3.6.5.AppImage;
        sha256 = "0vg71swk7xqgqjf4mna9ikzly8dplklyrpi61iav673frss54bb6";
    };
    extraPkgs = pkgs: with pkgs; [ ]; 
    meta = with stdenv.lib; {
        homepage = "https://k8slens.dev/";
        description = "Kubernetes IDE for debugging";
        license = "MIT";
  };
}   