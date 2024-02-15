import 'package:flutter/material.dart';
import 'package:parkingproject/recordableList.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp(),));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   String? nameType;
  String? valueChoose;
  List ListItmes = ['P1', 'P3', 'P5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        toolbarHeight: 1,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        width: MediaQuery.of(context).size.width*1,
        height: MediaQuery.of(context).size.height*1.1,

        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.96),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))
        ),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width*1,
            height: MediaQuery.of(context).size.height*1.16,

            child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text("New Entry", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(
                height: 10,
              ),
              Text("Parking Type", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, color: Colors.white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Row(
                   children: [
                     Radio(value: "Visitor",
                         activeColor: Colors.orangeAccent,
                         groupValue: nameType, onChanged: (value){
                           setState(() {
                             nameType = value.toString();
                           });
                         }),
                     Text("Visitor",style: TextStyle(fontSize: 21, color: Colors.white)),
                   ],
                 ),
                  Row(
                    children: [
                      Radio(value: "Hotel",
                          activeColor: Colors.orangeAccent,
                          groupValue: nameType, onChanged: (value){
                            setState(() {
                              nameType = value.toString();
                            });
                          }),
                      Text("Hotel",style: TextStyle(fontSize: 21,color: Colors.white)),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(value: "Dropoff",
                          activeColor: Colors.orangeAccent,
                          groupValue: nameType, onChanged: (value){
                            setState(() {
                              nameType = value.toString();
                            });
                          }),
                      Text("Dropoff",style: TextStyle(fontSize: 21,color: Colors.white)),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Text("Select Floor Access",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: DropdownButton(
                    underline: SizedBox(),
                    dropdownColor: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    hint: Text("Floor Access",style: TextStyle(color: Colors.white),),
                      isExpanded: true,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      value: valueChoose,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose = newValue.toString();
                        });
                  },
                      items: ListItmes.map((valueItems){
                    return DropdownMenuItem(
                      value: valueItems,
                      child: Text(valueItems, style: TextStyle(color: Colors.white),),
                    );
                  }).toList(),
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              Text("Car Plate", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.white),),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.width*0.6,
                width: MediaQuery.of(context).size.width*1,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt,size: 45,color: Colors.white.withOpacity(0.5),),
                    Text("Take Picture", style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.5)),)
                  ],
                )
              ),
              SizedBox(
                height: 20,
              ),
              Text("General Notes",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.white), ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width*1,
                height: MediaQuery.of(context).size.height*0.09,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextField(
                  style: TextStyle(),
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "Text Here",
                    hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(15),
                    //   borderSide: BorderSide(color: Colors.grey,strokeAlign: BorderSide.strokeAlignInside, width: 5)
                    // ),
                    border: InputBorder.none


                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Text("Collected Amount",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, color: Colors.white), ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width*1,
                height: MediaQuery.of(context).size.height*0.09,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Collected Amount",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 19),
                    border: InputBorder.none,

                  ),
                ),
              ),

            ],
                          ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 14,right: 15,bottom: 5),
        width: MediaQuery.of(context).size.width*1,
        height: MediaQuery.of(context).size.height*0.085,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.orangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
              textStyle: TextStyle(fontSize: 22)
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const RecordableList()));
          },
          child: Text("Enter"),),
      ),
    );
  }
}
