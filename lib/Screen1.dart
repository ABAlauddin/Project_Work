import 'package:flutter/material.dart';
import 'package:project_work/forget.dart';

import 'daseboard.dart';
class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Create an Account"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.network('https://images.pexels.com/photos/11035471/pexels-photo-11035471.jpeg',height: 200,width: 180,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Please Create a New Account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),

            /// EMAIL FIELD
            TextField(
              keyboardType:TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Enter Your Email",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),
            TextField(
                 keyboardType:TextInputType.number,
                 decoration: InputDecoration(
                labelText: "Enter Your Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter New Password",

                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                labelText: "Enter Confirm Password",

                border: OutlineInputBorder(),
              ),
            ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       TextButton(onPressed:(){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=> Forget()));
                       }, child: Text('Forget',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),)
                     ],
                  ),
                ),
                SizedBox(height: 30,),

            /// RESET BUTTON
            
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
      ),
    );
  }
}
