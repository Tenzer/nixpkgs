self: super:

{
  homehub-metrics-exporter = super.callPackage ./homehub-metrics-exporter { };
  mqtt2prometheus = super.callPackage ./mqtt2prometheus { };
  openweathermap-exporter = super.callPackage ./openweathermap-exporter { };
}
