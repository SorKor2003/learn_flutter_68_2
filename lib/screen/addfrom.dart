import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

class AddFrom extends StatefulWidget {
  const AddFrom({super.key});

  @override
  State<AddFrom> createState() => _AddFromState();
}

class _AddFromState extends State<AddFrom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(labelText: "Name")),
              TextField(decoration: InputDecoration(labelText: "Age"),
              keyboardType: TextInputType.number
              ),
              DropdownButtonFormField<Job>(
                decoration: InputDecoration(labelText: "Job"),
                items: Job.values.map((key) {
                  return DropdownMenuItem<Job>(
                    value: key,
                    child: Text(key.title),
                  );
                }).toList(),
                onChanged: (Job? value) {
                  print("Selected job: ${value?.title}");
                },
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  // Handle form submission here
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),   
  );
}

}