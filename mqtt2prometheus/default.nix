{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "mqtt2prometheus";
  version = "0.1.6";

  src = fetchFromGitHub {
    owner = "hikhvar";
    repo = "mqtt2prometheus";
    rev = "v${version}";
    sha256 = "0dz5mrwm231g45i8rbmvaza8bm6cr4jg5vc87h41vnm7xsx815g7";
  };

  subPackages = [ "cmd" ];

  vendorSha256 = "1fyzij7cakhd6x2hf3rvvslvvxmfmlp881x5rz2qwm04spa18cp4";

  postInstall = ''
    mv $out/bin/cmd $out/bin/mqtt2prometheus
  '';

  meta = with lib; {
    description = "MQTT to Prometheus gateway";
    homepage = https://github.com/hikhvar/mqtt2prometheus;
    license = licenses.mit;
  };
}
