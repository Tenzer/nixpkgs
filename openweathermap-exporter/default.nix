{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "openweathermap-exporter";
  version = "2020-11-08";

  src = fetchFromGitHub {
    owner = "Tenzer";
    repo = "openweathermap-exporter";
    rev = "887ca620964a14bac30551beef6ab800e13512f4";
    sha256 = "1r8libplr363fqpwgjvg1k0pfdw82g1bmpr10bj3ia8vizsvfy0p";
  };

  vendorSha256 = "1pd6q5plrqk5vm3hy5kbb83g5siw2p80hzh6z68da16557vphagn";

  meta = with lib; {
    description = "Prometheus exporter for the OpenWeatherMap service";
    homepage = https://github.com/Tenzer/openweathermap-exporter;
    license = licenses.mit;
  };
}
