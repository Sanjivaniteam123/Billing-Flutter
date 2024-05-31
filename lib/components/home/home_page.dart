import 'package:billingsoftware/util/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final isMobile = Responsive.isMobile(context);
    // final isTablet = Responsive.isTablet(context);
    final isLaptop = Responsive.isLaptop(context);
    final isDesktop = Responsive.isDesktop(context);

    return Row(
      children: [
        Expanded(
          flex: isDesktop
              ? 8
              : isLaptop
                  ? 8
                  : isDesktop
                      ? 8
                      : 12,
          child: Container(
            color: Color.fromARGB(255, 154, 251, 158),
          ),
        ),
        Expanded(
          flex: isDesktop ? 4 : 0,
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
