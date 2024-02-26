import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  int num = 0;
  void addCount() {
    numbers.add(numbers.last + 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text('${numbers.length}'),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return ListTile(
                    title: Text('${numbers[index]}'),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return Divider();
                },
                itemCount: numbers.length),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
