import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({required this.blendMode, required this.assetImage});
  final AssetImage assetImage;
  final BlendMode blendMode;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => const LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [Colors.black, Colors.transparent],
      ).createShader(rect),
      blendMode: blendMode,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: assetImage,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.lighten),
          ),
        ),
      ),
    );
  }
}
