import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  BackgroundImage({required this.assetImage});
  final AssetImage assetImage;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => const LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [Colors.black, Colors.transparent],
      ).createShader(rect),
      blendMode: BlendMode.lighten,
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
