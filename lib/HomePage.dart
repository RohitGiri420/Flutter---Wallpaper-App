import 'package:flutter/material.dart';
import 'package:wallpaper/UiHelper.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 240, 240, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            UiHelper().CustomTextField("Find Wallpaper", Icons.search),
            UiHelper().Heading("Best of the Month"),
            UiHelper().Container1('https://th.bing.com/th/id/OIP.D9jeyq0NZJy2Bx2NxLDYawHaEK?rs=1&pid=ImgDetMain')


          ],
        ),
      )

    );
  }
}
