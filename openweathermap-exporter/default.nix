{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "openweathermap-exporter";
  version = "2020-10-01";

  src = fetchFromGitHub {
    owner = "Tenzer";
    repo = "openweathermap-exporter";
    rev = "5653b84cfb401ea2d36f87f75ec5ab5d6f51631f";
    sha256 = "167d512hj11mdj8g1lijgzy2g4n55s25ghls7iblm69vi6vxpqdx";
  };

  vendorSha256 = "1pd6q5plrqk5vm3hy5kbb83g5siw2p80hzh6z68da16557vphagn";

  meta = with lib; {
    description = "Prometheus exporter for the OpenWeatherMap service";
    homepage = https://github.com/Tenzer/openweathermap-exporter;
    license = licenses.mit;
  };
}
