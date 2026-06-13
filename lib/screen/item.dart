import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  final List<String> data = [
    'สมชาย',
    'สมศรี',
    'สมปอง',
    'สมหมาย',
    'สมจิตร',
    'สมบัติ',
    'สมหวัง',
    'สมใจ',
    'สมบูรณ์',
    'สมศักดิ์',
  ];

  int quantity = 0;

  void add() {
    setState(() {
      quantity++;
    });
  }

  void remove() {
    setState(() {
      quantity = quantity > 0 ? quantity - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data[index],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: remove,
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  Text(
                    '$quantity',
                    style: const TextStyle(fontSize: 18),
                  ),
                  IconButton(
                    onPressed: add,
                    icon: const Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}