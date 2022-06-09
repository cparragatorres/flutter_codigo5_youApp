import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:flutter_codigo5_youapp/ui/widgets/item_filter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: 6.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                const SizedBox(
                  width: 12.0,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.explore_outlined),
                  label: Text(
                    "Explorar",
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: kBrandSecondaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0)),
                ),
                const SizedBox(
                  height: 32.0,
                  child: VerticalDivider(
                    color: Colors.white24,
                    thickness: 0.9,
                  ),
                ),
                ItemFilterWidget(text: "Todos", isSelected: true),
                ItemFilterWidget(text: "Mixes", isSelected: false),
                ItemFilterWidget(text: "Música", isSelected: false),
                ItemFilterWidget(text: "Programación", isSelected: false),
              ],
            ),
          ),
          Column(
            children: [
              Image.network(
                "https://images.pexels.com/photos/927444/pexels-photo-927444.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                width: double.infinity,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
              ListTile(
                leading: Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white30,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                ),
                title: Text(
                  "Petra 4k | Welcome to Jordania",
                  maxLines: 2,
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                subtitle: Text(
                  "alanxelmundo · 8.8 M de vistas · hace 5 años",
                  style: TextStyle(color: Colors.white54, fontSize: 13.0),
                ),
                trailing: Container(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
