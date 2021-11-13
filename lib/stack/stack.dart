import 'package:flutter/material.dart';
import 'package:article/stack/push.dart';
import 'package:article/stack/pop.dart';
import 'package:article/stack/peek.dart';

void main() => runApp(const stack());

class stack extends StatelessWidget {
  const stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STACK",
        style:TextStyle(
          color: Colors.amber
        )),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[600],
        child:
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.pinkAccent,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset("images/push.png"),
                          const ListTile(
                            leading: Icon(Icons.arrow_drop_down_circle),
                            title: Text('PUSH',
                              style:TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'push() function is used to insert an element at the top'
                                  ' of the stack. The element is added to the stack '
                                  'container and the size of the stack is increased '
                                  'by 1.',
                              style: TextStyle(color: Colors.white,
                                  height: 1.5,
                                  fontSize: 15),
                            ),
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
                                              Color(0xFF343090),
                                              Color(0xFF5f59f7),
                                              Color(0xFF6592fd),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16.0),
                                        primary: Colors.white,
                                        textStyle: const TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => const push()));
                                      },
                                      child: const Text('CODE...'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.yellowAccent,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        children: [
                          Image.asset("images/pop.png"),
                          const ListTile(
                            leading: Icon(Icons.arrow_drop_down_circle),
                            title: Text('POP',
                              style:TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'pop() function is used to remove an element from the '
                                  'top of the stack(newest element in the stack). '
                                  'The element is removed to the stack container and '
                                  'the size of the stack is decreased by 1.',
                              style: TextStyle(color: Colors.black,
                                  height: 1.5,
                                  fontSize: 15),
                            ),
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
                                              Color(0xFF343090),
                                              Color(0xFF5f59f7),
                                              Color(0xFF6592fd),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16.0),
                                        primary: Colors.white,
                                        textStyle: const TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const pop()));
                                      },
                                      child: const Text('CODE...'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.deepPurpleAccent,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        children: [
                          Image.asset("images/peek.png"),
                          const ListTile(
                            leading: Icon(Icons.arrow_drop_down_circle),
                            title: Text('PEEK',
                              style:TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'Function to return the top from stack without removing '
                                  'it',
                              style: TextStyle(color: Colors.white,
                                  height: 1.5,
                                  fontSize: 15),
                            ),
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
                                              Color(0xFF343090),
                                              Color(0xFF5f59f7),
                                              Color(0xFF6592fd),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16.0),
                                        primary: Colors.white,
                                        textStyle: const TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const peek()));
                                      },
                                      child: const Text('CODE...'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
