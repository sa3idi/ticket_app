import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double dividerWidth;

  const AppLayoutBuilderWidget({super.key, required this.randomDivider,  this.dividerWidth=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (kDebugMode) {
            print("${(constraints.constrainWidth()/randomDivider).floor()}");
          }
          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children:
              List.generate((constraints.constrainWidth()/randomDivider).floor(), (index) => SizedBox(
                width: dividerWidth,
                height: 1,
                child: const DecoratedBox(
                  decoration: BoxDecoration(

                  color: Colors.white,
                ),
              ))));

    });
  }
}
