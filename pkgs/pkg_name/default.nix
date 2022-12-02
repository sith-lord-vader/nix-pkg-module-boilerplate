{ lib
, stdenv
}:
let
in 
stdenv.mkDerivation (finalAttrs: {
    pname = "pkg_name";
    version = "1.0";

    outputs = [ "out" ];

    src = ../../src;

    buildInputs = [
        # Provide build inputs
    ];

    installPhase = ''
        mkdir $out
        mkdir $out/bin
        cp -rv $src/* $out/bin
    '';

    meta = {
    };
})