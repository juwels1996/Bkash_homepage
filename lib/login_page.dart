import 'package:bkash/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: Icon(Icons.arrow_back,color: Colors.red,),
        elevation: 0,
        actions: [
          InkWell(
            onTap: (){},
            child: Container(
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 2,color: Colors.purpleAccent)
              ),
              child: Text("English",
                textAlign: TextAlign.center,
                style:TextStyle(color: Colors.black),

              ),
            ),
          )
        ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(),
          Expanded(
            flex: 2,
              child: Container(

                child: Image.asset("assets/bkash.png",
                width: 100,
                height: 100,)

          )
          ),
          SizedBox(height: 12,),
          Expanded(
              flex: 2,
              child: Container(
                  child:Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Log In ",
                          style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold) ,),
                        Text("to your bkash account ",
                          style:TextStyle(fontSize: 22) ,),
                      ],
                    ),
                  )

              )
          ),
          SizedBox(height: 4,),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,


              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text("account number",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    textAlign: TextAlign.left,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: TextField(
                      controller: numberController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile Number",
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("bKash pin",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                        textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text("forgotten Pin?",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.purpleAccent),
                        textAlign: TextAlign.left,),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter bKash Pin",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
              flex: 1,
              child: RaisedButton(
                color: Colors.purpleAccent,
                  onPressed: (){},
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }, child: Text("Next",style: TextStyle(color: Colors.white),)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.white))
                  ],
                ) ,

              ))


        ],

      ),
    );
  }
}
