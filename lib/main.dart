import 'package:billingsoftware/components/billing/billing_page.dart';
import 'package:billingsoftware/components/duebalance/duebalance_page.dart';
import 'package:billingsoftware/components/expense/expense_page.dart';
import 'package:billingsoftware/components/extra_components/menu_bar.dart';
import 'package:billingsoftware/components/home/home_page.dart';
import 'package:billingsoftware/components/parties/parties_page.dart';
import 'package:billingsoftware/components/product/product_page.dart';
import 'package:billingsoftware/components/purchase/purchase_page.dart';
import 'package:billingsoftware/components/sales/sales_page.dart';
import 'package:billingsoftware/util/responsive.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    final isLaptop = Responsive.isLaptop(context);
    final isDesktop = Responsive.isDesktop(context);

    return MaterialApp(
      title: 'Billing Application',
      debugShowCheckedModeBanner: true,
      home: Builder(
        builder: (context) {
          return Scaffold(
            key: _key,
            appBar: isMobile || isTablet
                ? AppBar(
                    title: AppBarTitleChange(controller: _controller),
                  )
                : null,
            drawer: MenuItem(controller: _controller),
            body: Row(
              children: [
                if (isLaptop || isDesktop) MenuItem(controller: _controller),
                Expanded(
                  child: Center(
                    child: ScreenChange(
                      controller: _controller,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ScreenChange extends StatelessWidget {
  const ScreenChange({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final pageToReturn = _getTitleByIndex(controller.selectedIndex);
          return pageToReturn;
        });
  }
}

class AppBarTitleChange extends StatelessWidget {
  const AppBarTitleChange({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final pageToReturn = _getAppBarTitleByIndex(controller.selectedIndex);
          return pageToReturn;
        });
  }
}

Widget _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return const HomePage();
    case 1:
      return const Product();
    case 2:
      return const Parties();
    case 3:
      return const Billing();
    case 4:
      return const Sales();
    case 5:
      return const Purchase();
    case 6:
      return const DueBalance();
    default:
      return const Expense();
  }
}

Widget _getAppBarTitleByIndex(int index) {
  switch (index) {
    case 0:
      return const Text("Home");
    case 1:
      return const Text('Product');
    case 2:
      return const Text("Parties");
    case 3:
      return const Text("Billing");
    case 4:
      return const Text("Sales");
    case 5:
      return const Text("Purchase");
    case 6:
      return const Text("DueBalance");
    default:
      return const Text("Expense");
  }
}
