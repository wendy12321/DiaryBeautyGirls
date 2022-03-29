import 'package:flutter/material.dart';
import 'package:diarybeautygirls/home_screen.dart';

class CheckOutSuccess extends StatefulWidget {
  const CheckOutSuccess({Key key}) : super(key: key);

  @override
  State<CheckOutSuccess> createState() => _CheckOutSuccessState();
}

class _CheckOutSuccessState extends State<CheckOutSuccess> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        elevation: 0,
        foregroundColor: Colors.white,
        title: Text(
          'Checkout Success',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1,
            wordSpacing: 2,
          ),
        ),
        leading: Image(     // Mengambil gambar di assets
          image: AssetImage('assets/images/logo_2.png'),
          fit: BoxFit.fill,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            children: [
              Text(
                "CheckOut\nSuccess",
                style: TextStyle(
                  color: Colors.pink[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 75,
                ),
              ),
              SizedBox(height: 100,),
              ElevatedButton(     // Membuat Button yang ada bayangan/melayang
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink[200],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50,10,50,10),
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
        ),
      ),
    );
  }
}
