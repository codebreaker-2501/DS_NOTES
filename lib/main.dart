import 'package:flutter/material.dart';
import 'package:article/linked/linked.dart';
import 'package:article/stack/stack.dart';
import 'package:article/queue/queue.dart';
import 'package:article/tree/tree.dart';
import 'package:article/graph/graph.dart';

void main() => runApp(const MaterialApp(
  home:explore(),
),
);

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title:const Text("DATA STRUCTURES",style: TextStyle(
            color: Colors.amber,
            fontSize: 20.0
        ),),
        centerTitle: true,
      ),
      body:Container(
        color: Colors.grey[600],
        //margin: const EdgeInsets.all(15.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0,0.0,15.0,0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.deepOrange,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset("images/singlyLinkedlist.png"),
                      const ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('LIST',
                        style:TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                        subtitle: Text(
                          'LINKED LIST',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'a linked list is a linear collection of data elements'
                              ' whose order is not given by their physical '
                              'placement in memory. Instead, each element points'
                              ' to the next. It is a data structure consisting'
                              ' of a collection of nodes which together'
                              ' represent a sequence. ',
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
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => const linked()));
                                  },
                                  child: const Text('Learn More......'),
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
                  color: Colors.cyanAccent,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset("images/stack.png"),
                      const ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('STACK',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          ' A stack is an abstract data type that serves as a'
                              ' collection of elements, with two main principal '
                              'operations: Push, which adds an element to the '
                              'collection, and Pop, which removes the most '
                              'recently added element that was not yet removed.',
                          style: TextStyle(color: Colors.black,
                          height: 1.5,
                          fontSize: 15,),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const stack()));
                                  },
                                  child: const Text('Learn More......'),
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
                  color: Colors.orange,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const SizedBox( height: 10.0),
                      Image.asset("images/queue.png"),
                      const ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('QUEUE',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'A Queue is a linear structure which follows a '
                              'particular order in which the operations are '
                              'performed. The order is First In First Out '
                              '(FIFO). A good example of a queue is any queue of'
                              ' consumers for a resource where the consumer that'
                              ' came first is served first. The difference '
                              'between stacks and queues is in removing. In a '
                              'stack we remove the item the most recently added;'
                              ' in a queue, we remove the item the least '
                              'recently added.',
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const queue()));
                                  },
                                  child: const Text('Learn More......'),
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
                  color: Colors.amber,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset("images/tree.png"),
                      const ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('TREE',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'A tree is a widely used abstract data type that '
                              'simulates a hierarchical tree structure, with a '
                              'root value and subtrees of children with a '
                              'parent node, represented as a set of linked'
                              ' nodes.',
                          style: TextStyle(color: Colors.black,
                          height: 1.5,
                          fontSize: 15,
                          ),
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
                                     // color:Colors.transparent
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Tree()));
                                  },
                                  child: const Text('Learn More......'),
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
                  color: Colors.green,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset("images/graph.png"),
                      const ListTile(
                        leading: Icon(Icons.arrow_drop_down_circle),
                        title: Text('GRAPH',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'A graph is an abstract data type that is meant to '
                              'implement the undirected graph and directed graph'
                              ' concepts from the field of graph theory within '
                              'mathematics',
                          style: TextStyle(color: Colors.white,
                          height: 1.5,
                          fontSize: 15,
                          ),
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
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const graph()));
                                  },
                                  child: const Text('Learn More......'),
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
      )
    );
  }
}

class explore extends StatelessWidget {
  const explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [
          Color(0xFF3366FF),
          Color(0xFF00CCFF),
        ],
        ),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             const Text(
              'DATA STRUCTURES\n',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 40.0,
              ),
            ),
            Column(
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.center,
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
                                    //Color(0xFF343090),
                                    //Color(0xFF5f59f7),
                                    Colors.black,
                                    Colors.black,

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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const Home()));
                            },
                            child: const Text('   EXPLORE   '),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




