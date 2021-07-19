{ lib, fetchurl, appimageTools }:

let
  pname = "lens";
  version = "5.0.0";
  name = "${pname}-${version}";

  src = fetchurl {
    url = "https://api.k8slens.dev/binaries/Lens-5.0.0-latest.20210629.3.x86_64.AppImage";  
    sha256 = "0cbcw2gjmwav9p5v1pz28mpb2kdqpylgl98faazl680a58zy97k7";
    name="${pname}.AppImage";
  };

  appimageContents = appimageTools.extractType2 {
    inherit name src;
  };

in appimageTools.wrapType2 {
  inherit name src;

  extraInstallCommands =
    ''
      mv $out/bin/${name} $out/bin/${pname}
    '';

  meta = with lib; {
    description = "The Kubernetes IDE";
    homepage = "https://k8slens.dev/";
    license = licenses.mit;
    maintainers = with maintainers; [ dbirks ];
    platforms = [ "x86_64-linux" ];
  };
}
