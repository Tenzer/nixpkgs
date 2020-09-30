{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "openweathermap-exporter";
  version = "2020-09-30";

  src = fetchFromGitHub {
    owner = "Tenzer";
    repo = "openweathermap-exporter";
    rev = "7e6c8c3b218a3dc854c783ad5a3cea73a4655033";
    sha256 = "0pw7v50a82nvmf46hg79pmnw77yiz3w0qvi5rz4mxjy35dy9hjd3";
  };

  modSha256 = "1nmmpd9f3aisgl5frwzylw3341vnd2qwhd4syr8wbj748ca9xgqj";

  meta = with lib; {
    description = "Prometheus exporter for the OpenWeatherMap service";
    homepage = https://github.com/Tenzer/openweathermap-exporter;
    license = licenses.mit;
  };
}
