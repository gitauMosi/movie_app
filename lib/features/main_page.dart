import 'package:flutter/material.dart';
import 'package:movie_app/features/profile/profile_page.dart';
import 'package:movie_app/features/subscription/subscription_page.dart';
import 'package:movie_app/features/videos/videos_page.dart';

import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int itemSelctedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const VideosPage(),
    const SubscriptionPage(),
    const ProfilePage()
  ];

  void onItemSelected(int index) {
    setState(() {
      itemSelctedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[itemSelctedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
          currentIndex: itemSelctedIndex,
          onTap: onItemSelected,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.grey,
          items: [
            barItem('Home', Icons.home_filled),
            barItem('Videos', Icons.video_camera_front),
            barItem('Subscription', Icons.video_library_rounded),
            barItem('Profile', Icons.person),
          ]),
    );
  }

  BottomNavigationBarItem barItem(String name, IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: name,
    );
  }
}
