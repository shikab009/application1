import 'package:application1/Second_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  final _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 90),
              ),
              Container(
                height: 90,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //borderRadius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 50),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

            Form(
              key: _formKey, child: 
              Column(
                children: [
                  Container(
                      width: 300,
                      height: 70,
                      child: TextFormField(
                        controller: userNameController,
                        validator: (text) {
                          if (text == null || text.isEmpty){
                            return 'Username can not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text('Username/Email'),
                           border: OutlineInputBorder()
                        ),
                      ),
                      
                  ),
              
              
                  SizedBox(
                  height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Please Enter your password';
                        } else if (text.length < 3) {
                          return 'Password can not be less than 4 digit';
                        }
                      },
                      decoration: InputDecoration(
                        label: Text("password"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return SecondPage(
                                username: userNameController.text,
                                password: passwordController.text,
                              );
                            },
                          ));
                        }
                      },
                      child: Text('Log in'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Create New Account'))
                ]
              ),
                                
            ),
          
            ]),
            
      ),
    );
  }
}
