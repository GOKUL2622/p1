import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:p1/SignUp_screen.dart';
import 'package:p1/custom_screen.dart';


final formKey=GlobalKey<FormState>();

class SignInScreen extends StatelessWidget {
  bool rememberPassword = true;

  var email=TextEditingController();
  var password=TextEditingController();

  final _finalSignInKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return CustomScreen(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Text('Welcome Back!',
                      style: TextStyle(color: Colors.blue, fontSize: 33),),
                    SizedBox(height: 11,),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              validator: (value){
                                if(value==null|| value.isEmpty){
                                  return 'please enter valid email';
                                }
                                return null;
                              },
                              controller: email,
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  label: Text('Email'),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.blue.shade900,
                                        width: 3
                                    ),

                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      )
                                  ),
                                suffixText: '@gmail.com'
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              validator: (value){
                                if(value==null|| value.isEmpty){
                                  return 'please enter password';
                                }
                                return null;
                              },
                              controller: password,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  label: Text('Password'),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.blue.shade900,
                                        width: 3
                                    ),

                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      )
                                  )
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: rememberPassword, onChanged: (bool? value){
                                      setState((){
                                        rememberPassword = value!;
                                      });
                                    },
                                    ),
                                    Text('Remember Me', style: TextStyle(color: Colors.black45, fontSize: 20),)
                                  ],
                                ),
                                InkWell(
                                    onTap: (){},
                                    child: Text('Forgot Password?', style: TextStyle(color: Colors.blue, fontSize: 20),))
                              ],
                            ),
                            SizedBox(height: 5,),
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(onPressed: (){
                                if(formKey.currentState!.validate() && rememberPassword){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Processing Data'),
                                      )
                                  );
                                }
                                else if(!rememberPassword){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please agree to the processing of personal information ')));
                                }
                              },
                                  child: Text('Sign In')),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 0.7,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10
                                  ),
                                  child: Text('Sign Up with', style: TextStyle(color: Colors.black45),),
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 0.7,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook, color: Colors.blue,),
                                Icon(Icons.apple)
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Don't have an account?", style: TextStyle(color: Colors.black45),),
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
                                    },
                                    child: Text('Sign Up', style: TextStyle(color: Colors.blue),)),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void setState(Null Function() param0) {
}