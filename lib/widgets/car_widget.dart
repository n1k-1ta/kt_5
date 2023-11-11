import 'package:flutter/material.dart';
import 'package:kttt5/models/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final int index;

  CarWidget({required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text("${car.brand} ${car.model};    Color: ${car.color}",
            style: TextStyle(color: Color(0xFFF768B6))),
        subtitle: Text("Price: ${car.price} Dollars",
            style: TextStyle(color: Color(0xFFF768B6))),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (car.availability)
              Icon(
                Icons.check_circle_outline_sharp,
                size: 25,
                color: Color.fromARGB(255, 23, 99, 23),
              )
            else
              Icon(
                Icons.close_rounded,
                size: 15,
                color: const Color.fromARGB(255, 126, 53, 53),
              ),
          ],
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              index.toString(),
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}
