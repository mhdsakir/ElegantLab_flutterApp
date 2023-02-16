import 'package:flutter/material.dart';
//to format timestamp to date format

class BookingModel extends StatelessWidget {
  const BookingModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 1, 2, 42)),
            borderRadius: BorderRadius.circular(15)),
        child: ExpansionTile(
          title: Container(
            color: Color.fromARGB(255, 103, 239, 107),
            constraints: const BoxConstraints(maxWidth: 80),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Booking ID:',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'date: 02/16/2023',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )),
                
              ],
            ),
          ),
          
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              const Text('See Delails...'),
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 182, 16, 162),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text(
                        ('Customer: '),
                        style: const TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      Text(
                        ('Address: '),
                        style: const TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      Text(
                        ('Payment: '),
                        style: const TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      Text(
                        ('Notes: '),
                        style: const TextStyle(fontSize: 15,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
