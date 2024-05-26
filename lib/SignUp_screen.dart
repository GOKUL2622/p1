import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:p1/custom_screen.dart';

import 'SignIn_screen.dart';

final formkey=GlobalKey<FormState>();

class SignUpScreen extends StatelessWidget{

  bool agreePersonalInformation=true;

  Widget build(BuildContext context){
    return CustomScreen(
      child: Column(
        children:[
          Expanded(
              flex: 1,
              child: SizedBox(height: 10,)),
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(21), topLeft: Radius.circular(21))
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 11,),
                      Text('Get Started', style: TextStyle(color: Colors.blue, fontSize: 33),),
                      SizedBox(height: 21,),
                      Form(
                        key: formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'please enter name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Enter Full Name',
                                label: Text('Full Name'),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade900,
                                    width: 3
                                  )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1
                                  )
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'enter email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Email',
                                label: Text('Email'),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade900,
                                    width: 3
                                  )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1
                                  )
                                ),
                                suffixText: '@gmail.com'
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'enter password';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                label: Text('Password'),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade900,
                                    width: 3
                                  )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1
                                  )
                                ),
                              ),
                            ),
                            SizedBox(height: 9,),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: agreePersonalInformation, onChanged: (bool? value){
                                      setState((){
                                        agreePersonalInformation = value!;
                                      });
                                    }),
                                    Text('I agree to the processing of ', style: TextStyle(color: Colors.black45, fontSize: 15),),
                                    Text('Personal Data', style: TextStyle(color: Colors.blue,fontSize: 20),)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 9,),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(onPressed: (){
                                  if(formKey.currentState!.validate() && agreePersonalInformation){
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processinf Data')));
                                  }
                                  else if(!agreePersonalInformation){
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('please agree to the processing of personal dat')));
                                  }
                              }, child: Text('Sign Up')),
                            ),
                            SizedBox(height: 9,),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 0.7,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Sign Up with',style: TextStyle(color: Colors.black45),),
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 0.7,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 9,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook,color: Colors.blue,),
                                Icon(Icons.apple)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account? ", style: TextStyle(color: Colors.black45, fontSize: 15),),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                                  },
                                    child: Text('Sign In', style: TextStyle(color: Colors.blue, fontSize: 18),))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}