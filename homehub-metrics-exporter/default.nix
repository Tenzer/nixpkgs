{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "homehub-metrics-exporter";
  version = "2020-09-25";

  src = fetchFromGitHub {
    owner = "jamesnetherton";
    repo = "homehub-metrics-exporter";
    rev = "97205599497d72d86e89e78fb1c498bb10742526";
    sha256 = "0pd2wcmbnb2vjmpylxqljg26rkla1x8vim8pmz77ngkj7d4fp12m";
  };

  modSha256 = "0jy39cyq741fxljlnxd6qj2fvjyh5k20qlvx70hs6rl0a4jjbgnq";

  meta = with lib; {
    description = "Prometheus exporter for the BT Home Hub router";
    homepage = https://github.com/jamesnetherton/homehub-metrics-exporter;
    license = licenses.mit;
  };
}
