import 'package:flutter/material.dart';

class ItemListVideoWidget extends StatelessWidget {
  const ItemListVideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(bottom: 14.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://images.pexels.com/photos/927444/pexels-photo-927444.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                width: double.infinity,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7)
                  ),
                  child: Text(
                    "23:02",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0
                    ),
                  ),
                ),
              ),
            ],
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
    );
  }
}
