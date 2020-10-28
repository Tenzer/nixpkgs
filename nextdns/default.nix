{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "nextdns";
  version = "1.8.5";

  src = fetchFromGitHub {
    owner = "nextdns";
    repo = "nextdns";
    rev = "v${version}";
    sha256 = "149ynmimycw0mc5b6m13nmxry6mn90w2g8kqscaw86bl2h5alhx8";
  };

  vendorSha256 = "09whpzsn16znyrknfm5zlhla253r69j6d751czza4c83m4r36swj";

  meta = with lib; {
    description = "NextDNS CLI client (DoH Proxy)";
    homepage = https://nextdns.io/;
    license = licenses.mit;
  };
}
