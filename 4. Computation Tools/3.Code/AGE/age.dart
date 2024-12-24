import 'package:flutter/material.dart';
class age2 extends StatefulWidget {
  const age2({super.key});

  @override
  State<age2> createState() => _age2State();
}

class _age2State extends State<age2> {
  @override
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();
  TextEditingController d = TextEditingController();
  TextEditingController e = TextEditingController();
  TextEditingController f = TextEditingController();
  TextEditingController day = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();
  String day1="";
  String month1="";
  String year1="";

  result()
  {
    double aa = double.parse(a.text);//bday
    double bb = double.parse(b.text);//bmonth
    double cc = double.parse(c.text);//byear
    double dd = double.parse(d.text);//cday
    double ee = double.parse(e.text);//cmonth
    double ff = double.parse(f.text);//cyear
    double DAY =0 ;
    double MONTH =0 ;
    double YEAR =0 ;
    day1=DAY.toString();

setState(() {

  ///////////////////    DAY  //////////////////////
  if(dd>aa)
  {
    DAY=dd-aa;
    day1=DAY.toString();
  }
  else if(aa>dd)
  {
    ee =ee-1;//3
    dd=dd+30;//3+22+30
    DAY = dd-aa;
    day1=DAY.toString();
  }
  //////////////////    MONTH ////////////////////////
  if(ee>bb)
  {
    MONTH=ee-bb;
    month1=MONTH.toString();
  }
  else if(bb>ee)
  {
    ff=ff-1;
    ee=ee+12;
    MONTH=ee-bb;
    month1=MONTH.toString();
  }
  //////////////////////   YEAR ///////////////////////////
  if(ff>cc)
  {
    YEAR=ff-cc;
    year1=YEAR.toString();
  }





  showDialog(
    context: context,
    builder: (BuildContext) =>
        AlertDialog(
          content:   Container(
            height: 400,
            width: 412,
            child: Column(
              children: [
                SizedBox(height: 40,),
                Center(
                  child: Container(
                      height: 300,
                      width: 412,
                      child: Column(
                        children: [
                          Text("Your are this year old :",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 15),
                          Text("${year1}",style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(height: 20),
                          Text("Your are this month old :",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 15),
                          Text("${month1}",style: TextStyle(color: Colors.black,fontSize: 20),),
                          SizedBox(height: 20),
                          Text("Your are this day old :",style: TextStyle(fontSize: 18),),
                          SizedBox(height: 15),
                          Text("${day1}",style: TextStyle(color: Colors.black,fontSize: 20),),
                        ],
                      )),
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

});






  }



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
        Container(
        height: 710,
        width: 412,
        child: Column(
        children: [
        SizedBox(height: 50,),
          Container(
            height: 100,
            width: 250,
            child: TextFormField(
              controller: a,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Enter your birth day",
              ),
            ),
          ),//day
          Container(
            height: 100,
            width: 250,
            child: TextFormField(
              controller: b,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Enter your birth month",
              ),
            ),
          ),//month
          Container(
    height: 100,
    width: 250,
    child: TextFormField(
      controller: c,
      decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    ),
    hintText: "Enter your birth year",
    ),
    ),
    ),//year
          Container(
            height: 100,
            width: 250,
            child: TextFormField(
              controller: d,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Enter your current day",
              ),
            ),
          ),//current day
          Container(
            height: 100,
            width: 250,
            child: TextFormField(
              controller: e,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Enter your birth month",
              ),
            ),
          ),//current month
          Container(
            height: 100,
            width: 250,
            child: TextFormField(
              controller: f,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Enter your birth year",
              ),
            ),
          ),//current year
          Container(
              height: 60,
              width: 150,
              child: ElevatedButton(onPressed: (){
                result();
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Calculate",style: TextStyle(color: Colors.green,fontSize: 22),))
          ),//CALCULATE BUTTON

        ],
      ),
      ),
    ]
    ),
    );
  }
}
