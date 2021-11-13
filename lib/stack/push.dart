import 'package:flutter/material.dart';

void main() => runApp(const push());

class push extends StatelessWidget {
  const push({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'PUSH CODE',
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
                  '''// Function to add an item to stack.  It increases top by 1
void push(struct Stack* stack, int item)
{
    if (isFull(stack))
        return;
    stack->array[++stack->top] = item;
    printf("%d pushed to stack\n", item);
}


<----------------------ENDED--------------------->
                  ''',
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 20,
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