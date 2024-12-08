import 'package:flutter/material.dart';

class Excercises extends StatelessWidget {
  const Excercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.orange),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.heart_broken),
                )),
            title: Text(
              "Speaking Skills",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("16 excercises"),
            trailing: Icon(Icons.more_horiz),
          ),
        ),
      ),
    );
  }
}
