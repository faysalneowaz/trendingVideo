import 'package:flutter/material.dart';
import 'package:qutectask/Model/menuItem.dart';
import 'package:qutectask/screens/HomeScreen.dart';
import 'package:qutectask/screens/chatScreen.dart';


class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  final menuItemList = const <MenuItem>[
    MenuItem(Icons.home, 'Home'),
    MenuItem(Icons.chat, 'Chat'),
  ];
  int index = 0;
  final colors = <Color>[
    Colors.amber,
    Colors.deepOrangeAccent,
  ];
  final _buildBody = const [
    HomeScreen(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        items: menuItemList
        .map((MenuItem menuItem) => 
        BottomNavigationBarItem(
          backgroundColor: colors[index],
          icon: Icon(menuItem.iconData),
          label: menuItem.text),
          ).toList(),
          ),
      body: _buildBody[index],
    );
  }
}