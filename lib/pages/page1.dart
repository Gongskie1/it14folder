import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var txtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 20,
  );
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  dynamic output;
  @override
  void initState() {
    output = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void caculate(val1, val2, type) {
      setState(() {
        if (type == 'add') {
          output = val1 + val2;
        } else if (type == 'subtract') {
          output = val1 - val2;
        } else if (type == 'multiply') {
          output = val1 * val2;
        } else if (type == 'divide') {
          output = val1 / val2;
        } else {
          output = 'invalid output';
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful page1'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter value',
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: textController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter value',
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.black),
                  onPressed: () {
                    caculate(int.parse(textController1.text),
                        int.parse(textController2.text), 'add');
                  },
                  child: const Text('Add')),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.cyan,
                  ),
                  onPressed: () {
                    caculate(int.parse(textController1.text),
                        int.parse(textController2.text), 'subtract');
                  },
                  child: const Text('Subtract')),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.amberAccent,
                  ),
                  onPressed: () {
                    caculate(int.parse(textController1.text),
                        int.parse(textController2.text), 'multiply');
                  },
                  child: const Text('Multiply')),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    caculate(int.parse(textController1.text),
                        int.parse(textController2.text), 'divide');
                  },
                  child: const Text('Devide')),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Value: $output',
                style: txtStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
