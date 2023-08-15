import 'package:flutter/material.dart';
import 'style.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Sum App',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }

}

class MyHomePageUI extends State<MyHomePage>{
   Map<String, double> FormValue={"num1":0,"num2":0};
  double sum=0;

  @override
  Widget build(BuildContext context){
      MyInputValue(key,inputvalue){
      setState(() {
      FormValue.update(key, (value) => double.parse(inputvalue));
      });
    }
    AddAllNumber(){
      setState(() {
        sum = FormValue["num1"]!+FormValue["num2"]!;
      });
}
    return Scaffold(
      appBar: AppBar(title: Text('Sum App'),),
      body: Padding(
        padding: EdgeInsets.all(40),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Sum = '+ sum.toString(),style: HeadTextStyle(),),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value){
                MyInputValue("num1",value);
              },
                decoration: AppInputStyle('First Number')
            ),
            SizedBox(height: 20),
            TextFormField(
                onChanged: (value){
                  MyInputValue("num2",value);
                },
                decoration: AppInputStyle('Second Number')),
            SizedBox(height: 20),
            Container(
              width:double.infinity,
              child: ElevatedButton(
              style: AppButtonStyle(),
              child: Text('Add Sum'),
              onPressed:() {
                AddAllNumber();
              },
            ),)
          ],
        ),
      ),
    );
  }
}
