import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sun extends StatelessWidget {
  const Sun({
    Key? key,
    required Duration duration,
    required this.isFullSun,
  })  : _duration = duration,
        super(key: key);

  final Duration _duration;
  final bool isFullSun;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: _duration,
      curve: Curves.easeInOut,
      left: getProportionateScreenWidth(30),
      bottom: getProportionateScreenWidth(isFullSun ? -45 : -120),
      child: Container(
        width: 310.879,
        height: 310.879,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(255, 221, 0, 0.1),
        ),
        child: Center(
          child: Container(
              width: 310.879 - 50,
              height: 310.879 - 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 221, 0, 0.2),
              ),
              child: Center(
                child: Container(
                  width: 310.879 - 100,
                  height: 310.879 - 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 221, 0, 0.3),
                  ),
                  child: Center(
                    child: Container(
                      width: 310.879 - 150,
                      height: 310.879 - 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 221, 0, 1),
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
