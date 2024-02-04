import 'package:collection/collection.dart';

class PricePoints {
  final double x;
  final double y;
  PricePoints({required this.x, required this.y});
}

List<PricePoints> get pricePoint {
  final data = <double>[0, 100, 23, 200, 75, 500];
  return data
      .mapIndexed(
          ((index, element) => PricePoints(x: index.toDouble(), y: element)))
      .toList();
}
