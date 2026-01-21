import 'package:flutter/material.dart';

import 'daseboard.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 40,vertical: 30),
            child: Row(
              children: [
                Text('Create New Password',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),)
              ],
            ),
          ),
          SizedBox(height: 1,),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(right:80),
                  child: Text('Create new password for your account')),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "New Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Confirm New Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Center(
              child : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ( context)=> Dashboard ()));
                      }, child: Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('LOGIN',style: TextStyle(fontSize: 25,color: Colors.amberAccent,),),
                    ),
                  )
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
