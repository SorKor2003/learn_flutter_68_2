import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

import 'package:learn_flutter_68_2/main.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:learn_flutter_68_2/screen/addfrom.dart';
class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  late final List<Person> data;
  late final List<int> quantities;

  @override
  void initState() {
    super.initState();
    data = people;
    quantities = List<int>.filled(data.length, 0);
  }

  void add(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void remove(int index) {
    setState(() {
      if (quantities[index] > 0) {
        quantities[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: data.length,
//       itemBuilder: (context, index) {
//         final person = data[index];
//         return Container(
//           decoration: BoxDecoration(
//             border: const Border(bottom: BorderSide(color: Colors.grey)),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
//           padding: const EdgeInsets.all(16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       person.name,
//                       style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 4),
//                     Text('${person.job}, อายุ ${person.age}'),
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () => remove(index),
//                     icon: const Icon(Icons.remove_circle_outline),
//                   ),
//                   Text(
//                     '${quantities[index]}',
//                     style: const TextStyle(fontSize: 18),
//                   ),
//                   IconButton(
//                     onPressed: () => add(index),
//                     icon: const Icon(Icons.add_circle_outline),
//                   ),
//                 ],
//               ),
//               Image.asset(
//                 person.job.image,
//                 width: 80,
//                 height: 80,
//               ),      
//             ],
//           ),
//         );
//       },
//     );
//   }
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final person = data[index];
              return Container(
                decoration: BoxDecoration(
                  border: const Border(bottom: BorderSide(color: Colors.grey)),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            person.name,
                            style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text('${person.job}, อายุ ${person.age}'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => remove(index),
                          icon: const Icon(Icons.remove_circle_outline),
                        ),
                        Text(
                          '${quantities[index]}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        IconButton(
                          onPressed: () => add(index),
                          icon: const Icon(Icons.add_circle_outline),
                        ),
                      ],
                    ),
                    Image.asset(
                      person.job.image,
                      width: 80,
                      height: 80,
                    ),      
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child:SizedBox(
            height: 100,
            width: 100,
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.pinkAccent),
              ),
              onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {return AddFrom();}),
                  );
                },
              icon: const Icon(Icons.add, size: 30, color: Colors.white),
              ),
          ),
          ),
      ],
    );
  }
}