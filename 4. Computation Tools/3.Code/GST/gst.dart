import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  // <-- Added for state management



// List for dropdown
List<String> list = <String>['Inclusive', 'Exclusive'];

class gst extends StatefulWidget {  // <-- Changed class name to follow naming conventions
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  // TextControllers
  String dropdownValue = list.first;
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController gstexcactualamountresult = TextEditingController();
  TextEditingController gstexcgstresult = TextEditingController();
  TextEditingController gstexctotalresult = TextEditingController();
  TextEditingController gstincresult = TextEditingController();
  TextEditingController gstincgstresult = TextEditingController();
  TextEditingController gstinctotalresult = TextEditingController();

  // Exclusive gst Calculation
  clearResult() {
    double amount = double.parse(a.text);
    double percentage = double.parse(b.text);
    double actualamount = amount;
    double gstpercentage = amount * (percentage / 100);
    double totalamount = amount + gstpercentage;
    gstexcactualamountresult.text = actualamount.toString();
    gstexcgstresult.text = gstpercentage.toString();
    gstexctotalresult.text = totalamount.toString();
    print(gst);
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
          content: Container(
            height: 400,
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 20),
                Text("Your Actual amount is :", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Text(gstexcactualamountresult.text, style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                Text("Your gst amount is :", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text(gstexcgstresult.text, style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                Text("Your Total amount is :", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Text(gstexctotalresult.text, style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    });
  }

  // Inclusive gst Calculation
  incresult() {
    double amount = double.parse(a.text);
    double percentage = double.parse(b.text);
    double gstamount = amount - (amount * (100 / (100 + percentage)));
    double actualamount = amount - gstamount;
    double total = gstamount + actualamount;
    gstincresult.text = actualamount.toString();
    gstincgstresult.text = gstamount.toString();
    gstinctotalresult.text = total.toString();
    print(actualamount);
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
          content: Container(
            height: 400,
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 20),
                Text("Your Actual amount is :", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text(gstinctotalresult.text, style: TextStyle(fontSize: 30)),

                SizedBox(height: 20),
                Text("Your amount without inclusive gst :", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text(gstincresult.text, style: TextStyle(fontSize: 30)),

                SizedBox(height: 20),
                Text("Your inclusive gst amount is :", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text(gstincgstresult.text, style: TextStyle(fontSize: 30)),



              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    });
  }

  // UI with mode switch
  @override
  Widget build(BuildContext context) {









    return Scaffold(
      appBar: AppBar(
        title: Text('gst Calculator'),



      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(


            child: Container(
              height: 100,
              width: 300,
              child: TextFormField(
                controller: a,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: "Enter the amount",
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              height: 100,
              width: 300,
              child: TextFormField(
                controller: b,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: "Enter the gst %",
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Row(
              children: [
                SizedBox(width: 65),
                Container(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      incresult();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text("Inclusive", style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
                SizedBox(width: 80),

                Container(
                  height: 40,
                  width: 100,
                  child: // For Inclusive Button
                  ElevatedButton(
                    onPressed: () {
                      clearResult();
                                          },
                    style: ElevatedButton.styleFrom(


                      backgroundColor: Colors.red, // Use defined buttonColor


                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text("Exclusive", style: TextStyle(color: Colors.white, fontSize: 12)), // Use defined textColor
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
