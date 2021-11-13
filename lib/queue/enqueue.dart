import 'package:flutter/material.dart';

void main() => runApp(const enqueue());

class enqueue extends StatelessWidget {
  const enqueue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title:const Text("ENQUEUE"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey,
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              height:645.0 ,
              padding:const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.amber,
              ),
              child: Column(
                children: [
                  const Text(
                    'Enqueue:\n\nAdds an item to the queue. If the queue is full, '
                        'then it is said to be an Overflow condition.\n\n',
                    style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 30,
                    color: Colors.black,
                    height: 1,
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
                                    MaterialPageRoute(builder: (context) => const enqueuecode()));
                              },
                              child: const Text('  CODE...  '),
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
    );
  }
}

class enqueuecode extends StatelessWidget {
  const enqueuecode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'ENQUEUE CODE',
          style: TextStyle(
            //
          ),
        ),
      ),
      body: Container(
        color: Colors.greenAccent,
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  SingleChildScrollView(
            child: Column(
              children: const <Widget>[
                Text("\nCODE\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  '''// Function to add an item to the queue.
// It changes rear and size
void enqueue(struct Queue* queue, int item)
{
    if (isFull(queue))
        return;
    queue->rear = (queue->rear + 1)
                  % queue->capacity;
    queue->array[queue->rear] = item;
    queue->size = queue->size + 1;
    printf("%d enqueued to queue\n", item);
}
                  ''',
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 15,
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
