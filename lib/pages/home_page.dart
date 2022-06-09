import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:flutter_codigo5_youapp/ui/widgets/item_filter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
