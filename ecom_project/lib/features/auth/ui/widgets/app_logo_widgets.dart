import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../app/assets_path.dart' show AssetsPath;

class AppLogoWidget extends StatelessWidget {
  final double? logoHeight;
  final double? logoWidth;

  const AppLogoWidget({
    super.key, this.logoHeight, this.logoWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetsPath.appLogoSvg,height: logoHeight,width: logoWidth,);
  }
}
