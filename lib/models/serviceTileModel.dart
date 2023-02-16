import 'package:flutter/material.dart';

class ServiceTileModel extends StatelessWidget {
  final String title;
  final String description;
  const ServiceTileModel({
    Key? key, required this.title, required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Navigator.pushReplacementNamed(context, '/servicepage');
      },
      child: Card(
        color: Color.fromARGB(255, 246, 155, 186),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(children: [
          SizedBox(
              height: 100,
              width: 120,
              child: Image.asset(
                'assets/navBarImg.jpg',
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 100,
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    SizedBox(
                        height: 20,
                        child: Text(
                          title,
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        )),
                    SizedBox(
                        height: 60,
                        child: Text(
                          description,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          maxLines: 3,
                        )),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}