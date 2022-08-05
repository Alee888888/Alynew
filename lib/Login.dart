import 'package:flutter/material.dart';
import 'package:shopping/Welcom.dart';
import 'package:shopping/signup.dart';

class Login extends StatelessWidget {
  //const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 240, 247),
      body: Center(
        child: Column(
          
          children: [
             SizedBox(
              height: 10,
            ),
            Text("Username"),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width *0.5,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 4,
                ),
              child: TextField(
                //obscureText: true, pen password
                decoration: InputDecoration(
                  hintText:"ປ້ອນບັນຊີຜູ້ໃຊ້",
                  border: OutlineInputBorder(),
                  icon: Icon(
                    Icons.person,
                    color:Colors.amber ,
                  )
                ),
              ),
            ),
           
             SizedBox(
              height: 10,
            ),
            Text("Password"),
             SizedBox(
              height: 10,
            ),
            Container(
               width: MediaQuery.of(context).size.width *0.5,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 4,
                ),

              child: TextField(
                obscureText: true,
                //obscureText: true, pen password
                decoration: InputDecoration(
                  hintText:"ປ້ອນລະຫັດຜ່ານຜູ້ໃຊ້",
                  border: OutlineInputBorder(),
                  icon: Icon(
                    Icons.key_off_outlined,
                    color:Color.fromARGB(255, 148, 34, 68),
                  )
                ),
              ),
            ),
            const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> welcome()));
                    
                  },
                  child: const Text('LOGIN'),
                ),
              ],
            ),
          ), 
          
                 ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Color.fromARGB(255, 162, 170, 239),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> Signup()));
                    
                  },
                  child: const Text('signup'),
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