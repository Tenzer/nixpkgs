{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "homehub-metrics-exporter";
  version = "2020-10-04";

  src = fetchFromGitHub {
    owner = "jamesnetherton";
    repo = "homehub-metrics-exporter";
    rev = "7c13b467808a3121d939e829175bf459dbc35f6e";
    sha256 = "0milgawamg5i69j8986rmy4524xcxn97qnmyr1nbz52h2lkzk3ha";
  };

  vendorSha256 = "0ng44fda1m44jy6hzx9g12gqv93vl12x4ivh6fmsjm3x74nild00";

  meta = with lib; {
    description = "Prometheus exporter for the BT Home Hub router";
    homepage = https://github.com/jamesnetherton/homehub-metrics-exporter;
    license = licenses.mit;
  };
}
