import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "app1",
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int overall = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      // HEADER
      appBar: AppBar(
        title: const Text("Player ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            overall += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SECTION 1
            const Center(
              child: CircleAvatar(
                // backgroundColor: Colors.green,
                backgroundImage: AssetImage('assets/images/ronaldo.jpg'),
                radius: 80,
              ),
            ),
            const Divider(
              height: 70,
              color: Colors.grey,
            ),
            // SECTION 2
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Christiano Ronaldo',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 30),

            // SECTION 3
            Text(
              "RATINGS",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$overall',
              style: const TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 30),

            // SECTION 4
            Row(
              children: [
                // Mail Icon
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10),
                // Mail Text
                Text(
                  'christiano.ronaldo@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
