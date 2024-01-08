import 'package:flutter/material.dart';
import 'package:wallpaper/UiHelper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> img = [
    'https://th.bing.com/th/id/R.e3c0b57e39b9038b5a33a28d7953f24d?rik=JBG%2fOVH6YXu9Hg&riu=http%3a%2f%2fwebneel.com%2fdaily%2fsites%2fdefault%2ffiles%2fimages%2fdaily%2f05-2018%2fportrait-photography-by-dennis-drozhzhin.jpg&ehk=utxf2g0pBE0miiPTfJzJ1U2lZIOm6iyN5R6kw6uMHLg%3d&risl=&pid=ImgRaw&r=0',
    'https://i.pinimg.com/originals/26/a2/f4/26a2f42b5d4ff3e0e0783154b56e9b31.jpg',
    'https://th.bing.com/th/id/OIP.7BYvgBAGI-5yNTIR-MlSzQHaK3?rs=1&pid=ImgDetMain',
    'https://cdn.mos.cms.futurecdn.net/VTha9donMfgC5gbE2z4FKG.jpg',
    'https://freckledflower.com/wp-content/uploads/2018/03/Smiling-Portrait.jpg'
  ];

  List<dynamic> color = [
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.yellow,
    Colors.deepOrange,
    Colors.purple,
    Colors.amber,
    Colors.indigo,
    Colors.brown,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 240, 240, 1),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 80),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UiHelper().CustomTextField("Find Wallpaper", Icons.search),
                SizedBox(
                  height: 40,
                ),
                UiHelper().Heading("Best of the Month"),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      UiHelper().Container1("${img[0]}"),
                      UiHelper().Container1("${img[1]}"),
                      UiHelper().Container1("${img[2]}"),
                      UiHelper().Container1("${img[3]}"),
                      UiHelper().Container1("${img[4]}"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                UiHelper().Heading("The Color Tone"),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      UiHelper().ColorTone(color[0]),
                      UiHelper().ColorTone(color[1]),
                      UiHelper().ColorTone(color[2]),
                      UiHelper().ColorTone(color[3]),
                      UiHelper().ColorTone(color[4]),
                      UiHelper().ColorTone(color[5]),
                      UiHelper().ColorTone(color[6]),
                      UiHelper().ColorTone(color[7]),
                      UiHelper().ColorTone(color[8]),
                      UiHelper().ColorTone(color[9]),
                      UiHelper().ColorTone(color[10]),
                      UiHelper().ColorTone(color[11]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                UiHelper().Heading("Category"),
               // GridView.count(crossAxisCount: 3,children: [
               //    Container(color: Colors.red,),
               //    Container(color: Colors.red,),
               //    Container(color: Colors.red,),
               //    Container(color: Colors.red,),
               //    Container(color: Colors.red,),
               //  ],)
              ],
            ),
          ),
        ));
  }
}
