import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

Future<Color> generateColor(String image) async {
  final paletteGenerator = await PaletteGenerator.fromImageProvider(
    AssetImage(image),
  );
  if (paletteGenerator.paletteColors.isNotEmpty) {
    return paletteGenerator.paletteColors[0].color;
  }
  return Colors.transparent;
}
