import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TO DO APP",
      home: TODOAPP(),
    ));

class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
String value="", val="";
var listToDo=[''];
addToDo(String item){
  
  setState(() {
    listToDo.add(item);
    val=Null;
    
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("To Do List"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){addToDo(value);},
      ),
      body: ListView.builder(
        itemCount: listToDo.length,
        itemBuilder: (context, index) {
        return index==0? Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Add item"
            ),
            onChanged: (val){
                value=val;
                
                
              
            },
          ),
        ): 
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text('${listToDo[index]}'),
        );
      })
      );
       
      
      /*body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(),
          ),
          ListTile(title: const Text("Eironaaa"), leading: Icon(Icons.info)),
          ListTile(title: const Text("Mokchaa"), leading: Icon(Icons.info)),
          ListTile(title: const Text("chhaaa"), leading: Icon(Icons.info)),
        ],
      ),*/
      
    
  }
}
