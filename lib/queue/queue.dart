import 'package:flutter/material.dart';
import 'package:article/queue/enqueue.dart';
import 'package:article/queue/dequeue.dart';

void main() => runApp(queue());

class queue extends StatelessWidget {
  const queue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("QUEUE"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:  Container(
        color: Colors.deepPurple[600],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.orange,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset("images/ende.png"),
                      const ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('ENQUEUE'),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: <Color>[
                                          Color(0xFF0D47A1),
                                          Color(0xFF1976D2),
                                          Color(0xFF42A5F5),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const enqueue()));
                                  },
                                  child: const Text('   LEARN MORE...   '),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.blue,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset("images/ende.png"),
                      const ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('DEQUEUE'),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: <Color>[
                                          Color(0xFF0D47A1),
                                          Color(0xFF1976D2),
                                          Color(0xFF42A5F5),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    //padding: const EdgeInsets.all(16.0),
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const dequeue()));
                                  },
                                  child: const Text('   LEARN MORE...   '),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
