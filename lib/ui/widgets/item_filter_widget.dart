
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';

class ItemFilterWidget extends StatelessWidget {
  const ItemFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Chip(
        backgroundColor: kBrandSecondaryColor,
        label: Text(
          "Mixes",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
