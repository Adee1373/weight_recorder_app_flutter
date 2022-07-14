import 'package:flutter/material.dart';

void main() {
  runApp(const ForMaterial());
}

class ForMaterial extends StatelessWidget {
  const ForMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ForScafflod());
  }
}

class ForScafflod extends StatefulWidget {
  const ForScafflod({Key? key}) : super(key: key);

  @override
  State<ForScafflod> createState() => _ForScafflodState();
}

class _ForScafflodState extends State<ForScafflod> {
  int weight = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 54, 54),
      appBar: AppBar(
        title: const Text('Person Details'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 27, 26, 26),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.asset(
                'assets/images/image-of-person-sspeck-hi.png',
                height: 100,
                width: 100,
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Name',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('XYZ',
                  style: TextStyle(
                      color: Colors.yellow,
                      letterSpacing: 1,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Age',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('20',
                  style: TextStyle(
                      color: Colors.yellow,
                      letterSpacing: 1,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Person\'s Weight',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$weight',
              style: const TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 1,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            weight = weight + 1;
          });
        },
        backgroundColor: Colors.grey[700],
      ),
    );
  }
}
