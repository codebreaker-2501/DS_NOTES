import 'package:flutter/material.dart';

void main() => runApp(const pop());

class pop extends StatelessWidget {
  const pop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'POP CODE',
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
                  '''// Function to remove an item from stack.  It decreases top by 1

int pop(struct Stack* stack)
{
    if (isEmpty(stack))
        return INT_MIN;
    return stack->array[stack->top--];
}

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