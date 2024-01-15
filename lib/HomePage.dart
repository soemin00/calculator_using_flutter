import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0, num2=0,output;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      output = num1 + num2;
    });
  }

  void doSubstraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      output = num1 - num2;
    });
  }

  void doMultiplication(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      output = num1 * num2;
    });
  }

  void doDivision(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      output = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "Output : $output",
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the first Number ",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter the second Number "
              ),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                    onPressed: doAddition,
                    child: new Text("+"),
                    color: Colors.greenAccent,
                ),
                new MaterialButton(
                  onPressed: doSubstraction,
                  child: new Text("-"),
                  color: Colors.greenAccent,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  onPressed: doMultiplication,
                  child: new Text("*"),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  onPressed: doDivision,
                  child: new Text("/"),
                  color: Colors.greenAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
