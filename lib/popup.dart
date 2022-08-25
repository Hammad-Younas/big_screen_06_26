import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
                onSelected: (val) {
                  if (val == "hello") {
                    print("Hello Page Found");
                  }
                  else if (val == "setting") {
                    print("setting Page Found");

                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        title: Text("Notification"),
                        actions: [
                          Text(
                              "scjhsc subcsj shjcs ksjhcjds jsbcjhbscsbcjd sjhhjds "),
                        ],
                      );
                    },
                    );
                  }
                },
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text("hello"),
                      value: "hello",
                    ),
                    PopupMenuItem(
                      child: Text("hello"),
                      value: "hello",
                    ),
                    PopupMenuItem(
                      child: Text("setting"),
                      value: "setting",
                    ),
                  ];
                }),
          ],
        ),
        bottomSheet: DraggableScrollableSheet(
          initialChildSize: 0.1,
          minChildSize: 0.05,
          maxChildSize: 0.5,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                color: Colors.green,
                child: Column(
                  children: [

                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),

                  ],
                ),
              ),
            );
          },)

    );
  }
}
