import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Widget _vertical() {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
            // width: size.width*0.02,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                   child: ListTile(
                      title: Text(
                        'Standard Service',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            "Details",
                            style: TextStyle(
                                color: Colors.orange.shade600, fontSize: 15),
                          ),
                     InkWell(
                                   child: Text(
                                     "Proceed",
                                     style: TextStyle(
                                         fontSize: 15,
                                         color: Colors.orange.shade600),
                                   ),
                                   onTap: () {
                                     print(
                                       "value of your text",
                                     );
                                   },
                                 ),
                        ],
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                            "What is included",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            ' *A\n *B\n *C\n *D',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),

                          Text(
                            'Total 900',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),

                      // title:Text("List item $index")
                    ),
                    // Container(
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(left: 300),
                    //     child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         crossAxisAlignment: CrossAxisAlignment.end,
                    //         children: [
                    //           InkWell(
                    //             child: Text(
                    //               "Proceed",
                    //               style: TextStyle(
                    //                   fontSize: 15,
                    //                   color: Colors.yellow.shade600),
                    //             ),
                    //             onTap: () {
                    //               print(
                    //                 "value of your text",
                    //               );
                    //             },
                    //           ),
                    //         ]),
                    //   ),
                    // )

                ),
              ),
            );

        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange.shade300,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            height: size.height * 0.1,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Total 900',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Spacer(),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    print("value of your text");
                  },
                )

                // IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("APP"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 15,
                      shadowColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        width: 160.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('General Service'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.7,
                // color: Colors.yellow,
                child: _vertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
