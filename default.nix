self: super:

{
  homehub-metrics-exporter = super.callPackage ./homehub-metrics-exporter { };
  nextdns = super.callPackage ./nextdns { };
  openweathermap-exporter = super.callPackage ./openweathermap-exporter { };
}
