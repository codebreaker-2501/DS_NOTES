import 'package:flutter/material.dart';
import 'package:article/linked/singly.dart';
import 'package:article/linked/doubly.dart';

void main() => runApp(const linked());
 
 class linked extends StatelessWidget {
   const linked({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.grey[600],
         title:const Text("LINKED LIST",
         style: TextStyle(
           color: Colors.amber
         ),),
         centerTitle: true,
         elevation: 0.0,
       ),
       body:Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         color: Colors.grey[600],
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
                   color: Colors.redAccent,
                   clipBehavior: Clip.antiAlias,
                   child: Column(
                     children: [
                       Image.asset("images/singlyLinkedlist.png"),
                       const ListTile(
                         leading: Icon(Icons.arrow_drop_down_circle),
                         title: Text('SINGLY LINKED LIST',
                           style:TextStyle(
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Text(
                           'A singly linked list is a type of linked list that is '
                               'unidirectional, that is, it can be traversed in '
                               'only one direction from head to the last node (tail)',
                           style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                                     Navigator.push(context,MaterialPageRoute(builder: (context) => const singly()));
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
                   color: Colors.greenAccent,
                   clipBehavior: Clip.antiAlias,
                   child: Column(
                     children: [
                       Image.asset("images/DLL.png"),
                       const ListTile(
                         leading: Icon(Icons.arrow_drop_down_circle),
                         title: Text('DOUBLY LINKED LIST',
                           style:TextStyle(
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                       ),
                       const Padding(
                         padding: EdgeInsets.all(16.0),
                         child: Text(
                           'Doubly linked list is a type of linked list in which '
                               'each node apart from storing its data has two '
                               'links. The first link points to the previous node'
                               ' in the list and the second link points to the '
                               'next node in the list.',
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
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => const doubly()));
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
 