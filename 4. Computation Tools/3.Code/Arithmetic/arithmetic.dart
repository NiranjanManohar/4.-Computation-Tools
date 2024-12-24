import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class calcione extends StatefulWidget {
  const calcione({super.key});

  @override
  State<calcione> createState() => _calcioneState();
}

class _calcioneState extends State<calcione> {
  @override
  TextEditingController z = TextEditingController();
  String num1="";
  String num2="";
  String opr="";
  bool clk=false;


  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  height: double.infinity,
  width: double.infinity,
  color: Colors.white,
  child: Column(
    children: [

      //basically while clicking button it shows the value in the tff and thats it for here


      Row(
      children: [
        Container(
          height: 130,
          width: 412,
          child: TextFormField(
            style: TextStyle(fontSize: 50),
             controller: z,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
      ),//TEXT FORM FIELD

      Row(
        children: [
          SizedBox(width: 320,),
          Container(
            height: 60,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  if (num1.isNotEmpty) {
                    print(num1);
                    num1=num1.substring(0, num1.length -1);//(x,y-1) - x and y are index values here and we have to put x in order to indicate the start in  order to avoid location collapse :)
                    z.text=num1;
                  }
                });

                },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Icon(CupertinoIcons.xmark_rectangle,color: Colors.white,),
              ),
              ),
          SizedBox(width: 20,)
        ],
      ),//ERASE BUTTON

      Row(
        children: [
          Container(
            height: 600,
            width: 412,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                    height: 103,
                    width: 412,
                      child:Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [




                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                setState(() {
                                  setState(() {
                                    num1="";
                                    num2="";
                                    opr="";               //Here we entirely clear all the values bruhhh
                                    clk=false;
                                    z.text="";

                                  });


                                });

                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("AC",style: TextStyle(color: Colors.red,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                opr="()";
                                z.text="()";
                                clk=true;
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("( )",style: TextStyle(color: Colors.green,fontSize: 30),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                opr="%";
                                z.text="%";
                                clk=true;

                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("%",style: TextStyle(color: Colors.green,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                opr="➗";
                                z.text="➗";
                                clk=true;
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("➗",style: TextStyle(color: Colors.green,fontSize: 30),)

                              ),
                            ),
                          ],
                        ),
                      ) ,
                    ),
                  ],
                ), //First
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      height: 103,
                      width: 412,
                      child:Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [




                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="7";
                                  z.text=num2; //Display the input in the textformfield
                                }
                                else{
                                  num1+="7";
                                  z.text=num1;
                                }

                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("7",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="8";
                                  z.text=num2;
                                }
                                else{
                                  num1+="8";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("8",style: TextStyle(color: Colors.white,fontSize: 30),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="9";
                                  z.text=num2;
                                }
                                else{
                                  num1+="9";
                                  z.text=num1;
                                }


                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("9",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                opr="×";
                                z.text="×";
                                clk=true;
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("×",style: TextStyle(color: Colors.green,fontSize: 50),)

                              ),
                            ),
                          ],
                        ),
                      ) ,
                    ),
                  ],
                ),//second
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      height: 103,
                      width: 412,
                      child:Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [






                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="4";
                                  z.text=num2;
                                }
                                else{
                                  num1+="4";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("4",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="5";
                                  z.text=num2;
                                }
                                else{
                                  num1+="5";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("5",style: TextStyle(color: Colors.white,fontSize: 30),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="6";
                                  z.text=num2;
                                }
                                else{
                                  num1+="6";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("6",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                setState(() {
                                  opr="-";
                                  z.text="-";
                                  clk=true;
                                });

                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("-",style: TextStyle(color: Colors.green,fontSize: 60),)

                              ),
                            ),
                          ],
                        ),
                      ) ,
                    ),
                  ],
                ),//third
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      height: 103,
                      width: 412,
                      child:Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [






                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="1";
                                  z.text=num2;
                                }
                                else{
                                  num1+="1";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("1",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="2";
                                  z.text=num2;
                                }
                                else{
                                  num1+="2";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("2",style: TextStyle(color: Colors.white,fontSize: 30),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="3";
                                  z.text=num2;
                                }
                                else{
                                  num1+="3";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("3",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                opr="+";
                                z.text="+";
                                clk=true;
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("+",style: TextStyle(color: Colors.green,fontSize: 50),)

                              ),
                            ),
                          ],
                        ),
                      ) ,
                    ),
                  ],
                ),//fourth
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      height: 103,
                      width: 412,
                      child:Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [




                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                int a= int.parse(num1);
                                if(a.isNegative)
                                {
                                  a=a.abs();  //give only the absolute value eg: a= 5,-5,-9.9 then a= 5,5,9.9 give only +ve value bruhhhhh
                                  //default
                                  num1=a.toString();
                                  z.text=num1;
                                }
                                else{
                                  a =a*-1;
                                  num1=a.toString();
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("+/-",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+="0";
                                  z.text=num2;
                                }
                                else{
                                  num1+="0";
                                  z.text=num1;
                                }
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("0",style: TextStyle(color: Colors.white,fontSize: 30),)

                              ),
                            ),

                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                if(clk){
                                  num2+=".";
                                  z.text=num2;
                                }
                                else{
                                  num1+=".";
                                  z.text=num1;
                                }


                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text(".",style: TextStyle(color: Colors.white,fontSize: 35),)

                              ),
                            ),








                            SizedBox(
                              height:90,
                              width: 100,
                              child: ElevatedButton(onPressed: (){
                                double a=double.parse(num1); //used double in order to handle decimals
                                double b=double.parse(num2);
                                double c=0;
                                if(opr=="+"){
                                  c=a+b;
                                }
                                else if(opr=="-"){
                                  c=a-b;
                                }
                                else if(opr=="➗"){
                                  c=a/b;
                                }
                                else if(opr=="×"){
                                  c=a*b;
                                }
                                else if(opr=="%"){
                                if (a > b){
                                  c = (b / a) * 100;
                                }
                                else{
                                  c = (a / b) * 100;
                                }
                              }

                                z.text=c.toString();  //displays it
                                num1=z.text;          //ready to add up with next input
                                num2="";              //the next input
                                clk=false;            //back to false - reset

                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: CircleBorder(),
                                  ),
                                  child: Text("=", style: TextStyle(color: Colors.green,fontSize: 50),)
                              ),
                            ),
                          ],
                        ),
                      ) ,
                    ),
                  ],
                ),//fifth
              ],
            ),
          ),
        ],
      ),//ARITHMETICS
    ],
  ),
),
    );
  }
}
