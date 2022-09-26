import 'package:flutter/material.dart';

class ListDetails extends StatelessWidget {
  final IconData icon1;
  final String text;

  const ListDetails({super.key, required this.icon1, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(139, 224, 223, 223),
            borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon1,
                size: 28,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 16),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 28,
              )
            ],
          ),
        ),
      ),
    );
  }
}
