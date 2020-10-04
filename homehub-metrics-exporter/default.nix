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

  modSha256 = "0jy39cyq741fxljlnxd6qj2fvjyh5k20qlvx70hs6rl0a4jjbgnq";

  meta = with lib; {
    description = "Prometheus exporter for the BT Home Hub router";
    homepage = https://github.com/jamesnetherton/homehub-metrics-exporter;
    license = licenses.mit;
  };
}
