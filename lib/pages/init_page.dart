import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBrandPrimaryColor,
        title: Image.asset(
          'assets/images/logo.png',
          height: 26.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          CircleAvatar(
            radius: 14.0,
            backgroundColor: Colors.white24,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          const SizedBox(
            width: 14.0,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBrandPrimaryColor,
        selectedFontSize: 12.0,
        unselectedItemColor: Colors.white70,
        unselectedFontSize: 12.0,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          print(value);
        },
        items: [
          const BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(
              Icons.play_arrow_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: const Icon(
                Icons.add_circle_outline,
                size: 30.0,
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(
              Icons.video_collection_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
