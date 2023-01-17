import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({Key? key}) : super(key: key);

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int _counter = 0;

  @override
  void initState() {
    _counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Stateful page'),
        centerTitle: true,
      ),
      body: Center(
          child: _counter < 10
              ? Text(
                  '$_counter',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('press button to reset'),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _counter = 0;
                          });
                        },
                        child: const Text('Reset'))
                  ],
                )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
