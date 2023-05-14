import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final webScreenLayout;
  final mobscreen;
  const ResponsiveLayout(
      {super.key, required this.webScreenLayout, required this.mobscreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > size) {
          return webScreenLayout;
        }
        return mobscreen;
      },
    );
  }
}
