self: super:

{
  homehub-metrics-exporter = super.callPackage ./homehub-metrics-exporter { };
  openweathermap-exporter = super.callPackage ./openweathermap-exporter { };
}
