import 'package:flutter/material.dart';

void main() => runApp(const Treecode());

class Treecode extends StatelessWidget {
  const Treecode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'TREE CODE',
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
                  '''#include <stdio.h>
#include <stdlib.h>
struct node {
	int data;
	struct node* left;
	struct node* right;
};

/* newNode() allocates a new node
with the given data and NULL left
and right pointers. */
struct node* newNode(int data)
{
	// Allocate memory for new node
	struct node* node
		= (struct node*)malloc(sizeof(struct node));

	// Assign data to this node
	node->data = data;

	// Initialize left and
	// right children as NULL
	node->left = NULL;
	node->right = NULL;
	return (node);
}

int main()
{
	/*create root*/
	struct node* root = newNode(1);
	/* following is the tree after above statement
		1
		/ \
	NULL NULL
	*/

	root->left = newNode(2);
	root->right = newNode(3);
	/* 2 and 3 become left and right children of 1
			1
		/ 
		2	 3
	/ \ / \
NULL NULL NULL NULL
	*/

	root->left->left = newNode(4);
	/* 4 becomes left child of 2
			1
		/ \
		2	 3
	/ \ / \
	4 NULL NULL NULL
	/ \
NULL NULL
	*/

	gotcha();
	return 0;
}

<-----------------------------ENDED--------------------------------->
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
