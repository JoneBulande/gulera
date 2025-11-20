import 'package:flutter/material.dart';
import 'package:gulera/pages/home.dart';
import 'package:gulera/core/app_colors.dart';
import 'package:gulera/pages/profile_page.dart';
import 'package:gulera/pages/exercises_history.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.gray_600,
        currentIndex: indexPage,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            activeIcon: Icon(
              size: 26,
              PhosphorIcons.house(),
              color: AppColors.green_500,
            ),
            icon: Icon(size: 26, PhosphorIcons.house(), color: Colors.grey),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              size: 26,
              PhosphorIcons.clockCounterClockwise(),
              color: Colors.grey,
            ),
            activeIcon: Icon(
              size: 27,
              PhosphorIcons.clockCounterClockwise(PhosphorIconsStyle.fill),
              color: AppColors.green_500,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              size: 26,
              PhosphorIcons.userCircle(),
              color: Colors.grey,
            ),
            activeIcon: Icon(
              size: 26,
              PhosphorIcons.userCircle(PhosphorIconsStyle.fill),
              color: AppColors.green_500,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: indexPage,
        children: const [HomePage(), ExercisesHistory(), ProfilePage()],
      ),
    );
  }
}
