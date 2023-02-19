import 'package:cryptope/controller/BottomNavigationController/bottom_provider.dart';
import 'package:cryptope/utils/colors.dart';
import 'package:cryptope/view/ContentPage/content_page.dart';
import 'package:cryptope/view/Homepage/home_page.dart';
import 'package:cryptope/view/ProfilePage/profile_page.dart';
import 'package:cryptope/view/TokenPage/token_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List pages = [
  const Homepage(),
  const TokenPage(),
  const ContentPage(),
  const ProfilePage(),
];

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          return pages[ref.watch(bottomProvider)];
        },
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, child) {
          return BottomNavigationBar(
              onTap: (index) {
                ref.read(bottomProvider.notifier).state = index;
              },
              currentIndex: ref.watch(bottomProvider),
              selectedItemColor: AppColors.primary,
              selectedIconTheme: const IconThemeData(color: AppColors.primary),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.token_sharp), label: 'Token'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.task,
                    ),
                    label: 'Content'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: 'Profile'),
              ]);
        },
      ),
    );
  }
}
