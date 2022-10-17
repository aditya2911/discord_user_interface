/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Proxima.otf
  String get proxima => 'assets/fonts/Proxima.otf';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/animated1.jpg
  AssetGenImage get animated1 =>
      const AssetGenImage('assets/images/animated1.jpg');

  /// File path: assets/images/animated2.webp
  AssetGenImage get animated2 =>
      const AssetGenImage('assets/images/animated2.webp');

  /// File path: assets/images/animated3.webp
  AssetGenImage get animated3 =>
      const AssetGenImage('assets/images/animated3.webp');

  /// File path: assets/images/animated4.jpg
  AssetGenImage get animated4 =>
      const AssetGenImage('assets/images/animated4.jpg');

  /// File path: assets/images/animated5.jpg
  AssetGenImage get animated5 =>
      const AssetGenImage('assets/images/animated5.jpg');

  /// File path: assets/images/fortnite.jpeg
  AssetGenImage get fortnite =>
      const AssetGenImage('assets/images/fortnite.jpeg');

  /// File path: assets/images/gameplay1.jpg
  AssetGenImage get gameplay1 =>
      const AssetGenImage('assets/images/gameplay1.jpg');

  /// File path: assets/images/gameplay2.jpg
  AssetGenImage get gameplay2 =>
      const AssetGenImage('assets/images/gameplay2.jpg');

  /// File path: assets/images/gameplay3.jpg
  AssetGenImage get gameplay3 =>
      const AssetGenImage('assets/images/gameplay3.jpg');

  /// File path: assets/images/gameplay4.jpg
  AssetGenImage get gameplay4 =>
      const AssetGenImage('assets/images/gameplay4.jpg');

  /// File path: assets/images/gameplay5.jpg
  AssetGenImage get gameplay5 =>
      const AssetGenImage('assets/images/gameplay5.jpg');

  /// File path: assets/images/overwatchLogo.jpeg
  AssetGenImage get overwatchLogo =>
      const AssetGenImage('assets/images/overwatchLogo.jpeg');
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/overwatch.svg
  String get overwatch => 'assets/svg/overwatch.svg';
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
