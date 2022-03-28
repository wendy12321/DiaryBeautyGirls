import 'package:diarybeautygirls/page/page_checkoutsuccessfull.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {

  String _CreateCroup = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        elevation: 0,
        foregroundColor: Colors.white,
        title: Text(
          'Checkout',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1,
            wordSpacing: 2,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Center(
                      child: Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Your Full Name",
                        labelText: "Full Name :",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        suffixIcon:Icon(Icons.account_circle),
                        border: UnderlineInputBorder(),
                        fillColor: Colors.pink[50],
                        filled: true
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          labelText: "Your Email :",
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                          suffixIcon:Icon(Icons.email),
                          border: UnderlineInputBorder(),
                          fillColor: Colors.pink[50],
                          filled: true
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "Enter Your Phone Number",
                          labelText: "Your Phone Number :",
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                          suffixIcon:Icon(Icons.phone),
                          border: UnderlineInputBorder(),
                          fillColor: Colors.pink[50],
                          filled: true
                      ),
                      maxLength: 13,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Address",
                          labelText: "Your Address :",
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                          suffixIcon:Icon(Icons.home),
                          border: UnderlineInputBorder(),
                          fillColor: Colors.pink[50],
                          filled: true
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your City",
                          labelText: "Your City :",
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                          suffixIcon:Icon(Icons.location_city),
                          border: UnderlineInputBorder(),
                          fillColor: Colors.pink[50],
                          filled: true
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Country",
                          labelText: "Your Country :",
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                          suffixIcon:Icon(Icons.flag),
                          border: UnderlineInputBorder(),
                          fillColor: Colors.pink[50],
                          filled: true
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 300.0),
                    child: Text(
                      "Payment :",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Radio(value: "Ovo", groupValue: _CreateCroup, onChanged: (val) {
                            _CreateCroup = val;
                            setState(() {});
                          }),
                          Text("Ovo",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black
                            ),),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(value: "Gopay", groupValue: _CreateCroup, onChanged: (val) {
                            _CreateCroup = val;
                            setState(() {});
                          }),
                          Text("Gopay",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black
                            ),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink[200],
                    ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CheckOutSuccess()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100,20,100,20),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}