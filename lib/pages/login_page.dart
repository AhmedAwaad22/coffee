import 'package:coffee_shop_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/login2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center( 
          child: Container(            
            padding: const EdgeInsets.all(28.0),
            width: 306.0,
            height: 580.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28.0),
              border: Border.all(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/images/logo.png',
                  width: 150.0,
                  height: 150.0,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Welcome in CIC Coffeé',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Please login to safely continue your experience',
                  style: TextStyle(fontSize: 15.0,),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'E-Mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {

                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => const HomePage(),
                ),
             );
          },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF870000), // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(264.0, 50.0), // Button width and height
                  ),
                  child: const Text('Login',
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}