import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(
        children: [
          Row(
            children: [
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
            ],
          ),
        ],
      ),
    );
  }
}
