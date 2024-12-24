import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  @override
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController bmiresult = TextEditingController();

  clearResult(){
    double ht = double.parse(a.text);
    double wt = double.parse(b.text);
    double mt=ht/100; //step 1
    double bmi = wt / (mt*mt);
    bmiresult.text = bmi.toString();
    print(bmi);

    setState(() {
      if(bmi>=0 && bmi<=18){
showDialog(
    context: context,
    builder: (BuildContext) =>
        AlertDialog(
          title: Text("Your BMI is :"),
          content:   Container(
            height: 300,
            width: 412,
            child: Column(
              children: [
                SizedBox(height: 40,),
               Center(
                 child: Container(
                   height: 60,
                     width: 412,
                     child: Text("${bmiresult.text}",style: TextStyle(color: Colors.black,fontSize: 20),)),
               ),
                SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: 300,
                  color: Colors.yellow,
                 child: Column(
                   children: [
                     SizedBox(height: 20,),
                     Text("You are Underweight",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                   ],
                 ),
                ),
              ],
            ),

          ),
          actions: <Widget> [ TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
          ],
        ),
        );
        } // UNDERWEIGHT
      if(bmi>18 && bmi<=24){
      showDialog(
      context: context,
      builder: (BuildContext) =>
      AlertDialog(
      title: Text("You BMI is :"),
        content:   Container(
          height: 300,
          width: 412,
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(
                child: Container(
                    height: 60,
                    width: 412,
                    child: Text("${bmiresult.text}",style: TextStyle(color: Colors.black,fontSize: 20),)),
              ),
      SizedBox(height: 30,),
      Container(
      height: 60,
      width: 300,
      color: Colors.green,
      child: Column(
      children: [
      SizedBox(height: 20,),
      Text("You are normal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      ],
      ),
      ),
      ],
      ),

      ),
      actions: <Widget> [ TextButton(
      onPressed: () => Navigator.pop(context, 'OK'),
      child: const Text('OK'),
      ),
      ],
      ),
      );
      }//NORMAL
      if(bmi>24 && bmi<=29){
        showDialog(
          context: context,
          builder: (BuildContext) =>
              AlertDialog(
                title: Text("Your BMI is :"),
                content:   Container(
                  height: 300,
                  width: 412,
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      Center(
                        child: Container(
                            height: 60,
                            width: 412,
                            child: Text("${bmiresult.text}",style: TextStyle(color: Colors.black,fontSize: 20),)),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 60,
                        width: 300,
                        color: Colors.orange,
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text("You are Overweight",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
                actions: <Widget> [ TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
                ],
              ),
        );
      }//OVERWEIGHT
      if(bmi>=29){
        showDialog(
          context: context,
          builder: (BuildContext) =>
              AlertDialog(
                title: Text("Your BMI is :"),
                content:   Container(
                  height: 300,
                  width: 412,
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      Center(
                        child: Container(
                            height: 60,
                            width: 412,
                            child: Text("${bmiresult.text}",style: TextStyle(color: Colors.black,fontSize: 20),)),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 60,
                        width: 300,
                        color: Colors.red,
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text("You are Obese",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
                actions: <Widget> [ TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
                ],
              ),
        );
      }//OBESE
    }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
          SizedBox(height: 100,),
            Container(
              height: 710,
              width: 412,
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Container(
                    height: 100,
                    width: 250,
                    child: TextFormField(
                      controller: a,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Enter your height in cm",
                      ),
                    ),
                  ),//height
                  SizedBox(height: 50,),
                  Container(
                    height: 100,
                    width: 250,
                    child: TextFormField(
                      controller: b,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Enter your weight in kg",
                      ),
                    ),
                  ),//weight
                  SizedBox(height: 80,),

                  Container(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(onPressed: (){
                      clearResult();
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text("Calculate",style: TextStyle(color: Colors.green,fontSize: 22),))
                  ),//CALCULATE BUTTON
                  SizedBox(height: 50,),

                  Container(
                    height: 180,
                    width: 412,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.yellow,
                            ),//yellow
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.green,
                            ),//GREEN
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("Underweight",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),
                            SizedBox(width: 45),
                            Text("Normal",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),
                            SizedBox(width: 45,),
                            Text("Overweight",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),
                            SizedBox(width: 50,),
                            Text("Obesity",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),


                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
