import 'package:flutter/material.dart';

class RecordableList extends StatefulWidget {
  const RecordableList({super.key});

  @override
  State<RecordableList> createState() => _RecordableListState();
}

class _RecordableListState extends State<RecordableList> {
  List<String> productlist = ['Banana', "Apple", 'Mango', 'Papaya', 'Cherry', 'Strawberry','Orange'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Reorderable ListTiles"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: ReorderableListView.builder(
          itemBuilder: (BuildContext context, index){
            return Card(
                key: ValueKey(productlist[index]),
                child: ListTile(
                  title: Text(productlist[index]),
                )
            );
          },
          itemCount: productlist.length,
          onReorder:(oldIndex, newIndex){
            setState(() {
              if(newIndex > oldIndex){
                newIndex = newIndex-1;
              }
              final element = productlist.removeAt(oldIndex);
              productlist.insert(newIndex, element);
            });
          }
      ),
    );
  }
}
