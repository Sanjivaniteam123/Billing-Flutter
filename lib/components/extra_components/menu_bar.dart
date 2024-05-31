import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

// class MenuItems extends StatefulWidget {
//   const MenuItems({super.key});

//   @override
//   State<MenuItems> createState() => _MenuItemsState();
// }

// class _MenuItemsState extends State<MenuItems> {
//   int _selectedDestination = 0;

//   void selectDestination(int index) {
//     setState(() {
//       _selectedDestination = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isDesktop = Responsive.isDesktop(context);

//     if (isDesktop) {
//       return Drawer(
//         width: !isDesktop ? 250 : double.infinity,
//         backgroundColor: const Color.fromARGB(255, 179, 253, 181),
//         child: ListView(
//           children: [
//             Padding(
//               padding: _selectedDestination == 0
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.home_outlined),
//                 iconColor:
//                     _selectedDestination == 0 ? Colors.white : Colors.black,
//                 title: const Text("Home"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 0,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () =>
//                     {selectDestination(0), Navigator.pushNamed(context, '/')},
//                 shape: _selectedDestination == 0
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : null,
//               ),
//             ),
//             Padding(
//               padding: _selectedDestination == 1
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.production_quantity_limits_outlined),
//                 iconColor:
//                     _selectedDestination == 1 ? Colors.white : Colors.black,
//                 title: const Text("Product"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 1,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () => {
//                   selectDestination(1),
//                   Navigator.pushNamed(context, '/product')
//                 },
//                 shape: _selectedDestination == 1
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//               ),
//             ),
//             Padding(
//               padding: _selectedDestination == 2
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.group_add_outlined),
//                 iconColor:
//                     _selectedDestination == 2 ? Colors.white : Colors.black,
//                 title: const Text("Parties"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 2,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () => {
//                   selectDestination(2),
//                   Navigator.pushNamed(context, '/parties')
//                 },
//                 shape: _selectedDestination == 2
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//               ),
//             ),
//             Padding(
//               padding: _selectedDestination == 3
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.newspaper_outlined),
//                 iconColor:
//                     _selectedDestination == 3 ? Colors.white : Colors.black,
//                 title: const Text("Billing"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 3,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () => {
//                   selectDestination(3),
//                   Navigator.pushNamed(context, '/billing')
//                 },
//                 shape: _selectedDestination == 3
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//               ),
//             ),
//             Padding(
//               padding: _selectedDestination == 4
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.point_of_sale_outlined),
//                 iconColor:
//                     _selectedDestination == 4 ? Colors.white : Colors.black,
//                 title: const Text("Sales"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 4,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () => {
//                   selectDestination(4),
//                   Navigator.pushNamed(context, '/sales')
//                 },
//                 shape: _selectedDestination == 4
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//               ),
//             ),
//             Padding(
//               padding: _selectedDestination == 5
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.shopping_bag_outlined),
//                 iconColor:
//                     _selectedDestination == 5 ? Colors.white : Colors.black,
//                 title: const Text("Purchse"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 5,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () => {
//                   selectDestination(5),
//                   Navigator.pushNamed(context, '/purchse')
//                 },
//                 shape: _selectedDestination == 5
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//               ),
//             ),
//             Padding(
//               padding: _selectedDestination == 6
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.calendar_month_outlined),
//                 iconColor:
//                     _selectedDestination == 6 ? Colors.white : Colors.black,
//                 title: const Text("Due Balance"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 6,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () => {
//                   selectDestination(6),
//                   Navigator.pushNamed(context, '/duebalance')
//                 },
//                 shape: _selectedDestination == 6
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//               ),
//             ),
//             Padding(
//               padding: _selectedDestination == 7
//                   ? const EdgeInsets.fromLTRB(0, 8, 0, 0)
//                   : const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.wallet_outlined),
//                 iconColor:
//                     _selectedDestination == 7 ? Colors.white : Colors.black,
//                 title: const Text("Expense"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 selected: _selectedDestination == 7,
//                 selectedColor: Colors.white,
//                 selectedTileColor: const Color.fromARGB(226, 87, 87, 87),
//                 onTap: () => {
//                   selectDestination(7),
//                   Navigator.pushNamed(context, '/expense')
//                 },
//                 shape: _selectedDestination == 7
//                     ? const Border(
//                         left: BorderSide(
//                           color: Color.fromARGB(255, 46, 142, 50),
//                           width: 7,
//                         ),
//                       )
//                     : RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//               ),
//             ),
//           ],
//         ),
//       );
//     } else {
//       return Drawer(
//         width: !isDesktop ? 250 : double.infinity,
//         backgroundColor: const Color.fromARGB(255, 179, 253, 181),
//         child: ListView(
//           children: [
//             const Padding(
//               padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
//               child: ListTile(
//                   tileColor: Color.fromARGB(226, 87, 87, 87),
//                   leading: Icon(Icons.home_outlined),
//                   iconColor: Colors.white,
//                   title: Text("Home"),
//                   textColor: Colors.white,
//                   titleTextStyle: TextStyle(fontWeight: FontWeight.w700),
//                   shape: Border(
//                     left: BorderSide(
//                       color: Color.fromARGB(255, 46, 142, 50),
//                       width: 7,
//                     ),
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.production_quantity_limits_outlined),
//                 iconColor: Colors.black,
//                 title: const Text("Product"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 onTap: () => {Navigator.pushNamed(context, '/product')},
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.group_add_outlined),
//                 iconColor: Colors.black,
//                 title: const Text("Parties"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 onTap: () => {Navigator.pushNamed(context, '/parties')},
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.newspaper_outlined),
//                 iconColor: Colors.black,
//                 title: const Text("Billing"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 onTap: () => {
//                   selectDestination(1),
//                   Navigator.pushNamed(context, '/billing')
//                 },
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.point_of_sale_outlined),
//                 iconColor: Colors.black,
//                 title: const Text("Sales"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 onTap: () => {Navigator.pushNamed(context, '/sales')},
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.shopping_bag_outlined),
//                 iconColor: Colors.black,
//                 title: const Text("Purchase"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 onTap: () => {Navigator.pushNamed(context, '/purchase')},
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.calendar_month_outlined),
//                 iconColor: Colors.black,
//                 title: const Text("Due Balace"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 onTap: () => {Navigator.pushNamed(context, '/duebalance')},
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
//               child: ListTile(
//                 tileColor: Colors.white,
//                 leading: const Icon(Icons.wallet_outlined),
//                 iconColor: Colors.black,
//                 title: const Text("Expense"),
//                 textColor: Colors.black,
//                 titleTextStyle: const TextStyle(fontWeight: FontWeight.w700),
//                 onTap: () => {Navigator.pushNamed(context, '/expense')},
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: const SidebarXTheme(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 115, 252, 119),
        ),
        hoverColor: Color.fromARGB(255, 212, 211, 211),
        hoverTextStyle: TextStyle(color: Colors.black),
        itemMargin: EdgeInsets.fromLTRB(8, 0, 8, 0),
        selectedItemMargin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        itemTextPadding: EdgeInsets.only(left: 10),
        selectedItemTextPadding: EdgeInsets.only(left: 10),
        itemPadding: EdgeInsets.fromLTRB(16, 8, 8, 8),
        selectedItemPadding: EdgeInsets.fromLTRB(16, 8, 8, 8),
        selectedTextStyle:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Colors.black),
        selectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 200,
        itemDecoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        selectedItemDecoration: const BoxDecoration(
          color: Color.fromARGB(225, 111, 111, 111),
          border: Border(
            left: BorderSide(
              width: 8,
              color: Color.fromARGB(255, 54, 145, 57),
            ),
          ),
        ),
      ),
      items: const [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
        ),
        SidebarXItem(
          icon: Icons.production_quantity_limits_outlined,
          label: 'Product',
        ),
        SidebarXItem(
          icon: Icons.group_add_outlined,
          label: 'Parties',
        ),
        SidebarXItem(
          icon: Icons.newspaper_outlined,
          label: 'Billing',
        ),
        SidebarXItem(
          icon: Icons.point_of_sale_outlined,
          label: 'Sales',
        ),
        SidebarXItem(
          icon: Icons.shopping_bag_outlined,
          label: 'Purchase',
        ),
        SidebarXItem(
          icon: Icons.calendar_month_outlined,
          label: 'Due Balance',
        ),
        SidebarXItem(
          icon: Icons.wallet_outlined,
          label: 'Expense',
        ),
      ],
    );
  }
}
