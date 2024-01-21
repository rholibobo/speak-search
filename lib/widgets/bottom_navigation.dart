import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/chats.dart';
import 'package:speaksphere/screens/exercises.dart';
import 'package:speaksphere/screens/games.dart';
import 'package:speaksphere/screens/home.dart';
import 'package:speaksphere/screens/lessons.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class BottomNavigationPage extends StatefulWidget {
  static const routeName = "/menu";
  const BottomNavigationPage({
    super.key,
  });

  // final StatefulNavigationShell child;
  // final StatefulNavigationShell navigationShell;

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  static const List<BottomNavigationBarItem> _bottomNavigationItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(
        icon: Icon(Icons.play_lesson_outlined), label: "Lessons"),
    BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "Exercises"),
    BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games"),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
  ];

  // void _goBranch(int index) {
  //   widget.navigationShell.goBranch(
  //     index,
  //     initialLocation: index == widget.navigationShell.currentIndex,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        const LessonScreen(),
        const ExercisesScreen(),
        const GamesScreen(),
        const ChatsScreen(),
      ][selectedIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          BottomNavigationBar(
            iconSize: 30,
            elevation: 5,
            backgroundColor: AppColor.backgroundColor,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: AppColor.offWhite,
            type: BottomNavigationBarType.fixed,
            items: _bottomNavigationItems,
            // currentIndex: widget.child.currentIndex,
            onTap: (index) {
              if (mounted) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            currentIndex: selectedIndex,
          ),
          buildLineAboveSelectedItem()
        ],
      ),
    );
  }

  Widget buildLineAboveSelectedItem() {
    double itemWidth = MediaQuery.of(context).size.width / 5;
    return Positioned(
      top: 0,
      left: selectedIndex * itemWidth,
      child: Container(
        width: itemWidth, // Adjust as needed
        height: 5,
        decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.only(
          //   bottomRight: Radius.circular(20),
          //   bottomLeft: Radius.circular(20),
          // ),
        ),
        // Change to your desired line color
      ),
    );
  }
}
