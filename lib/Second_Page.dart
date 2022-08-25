
import 'package:application1/Third_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatefulWidget {
  final String username;
  final String password;
  const SecondPage({Key? key, required this.username, required this.password})
      : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();
  final userBloodGroup = TextEditingController();
  final userAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 20,),
                Text(widget.username,style: TextStyle(fontSize: 18),),
              ],
            ),

            Form(
              key: _formKey
              ,child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                addressbox('Address',userAddress),
                addressbox('Blood',userBloodGroup),
                        SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                      ),
                      // onPressed: () {
                      //     Navigator.of(context).push(MaterialPageRoute(
                      //       builder: (context) {
                      //         return ThirdPage();

                      //       }
                      //     ));
                      //   },
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return ThirdPage(
                                userBloodGroup: userBloodGroup.text,
                                userAddress: userAddress.text,
                              );
                            },
                          ));
                        }
                      },

                      child: Text('Submit'),
                    ),
                  ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //        Text('Blood group'),
                //       SizedBox(
                //         width: 200,
                //         child: TextFormField(
                //           decoration: InputDecoration(
                //             hintText:'Blood Group',
                //             border: OutlineInputBorder()
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),




              ],
            )),
            // Row(
            //    crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'Hello',
            //       style: TextStyle(fontSize: 30),
            //     ),
            //     Text(
            //       widget.username,
            //       style: TextStyle(fontSize: 30),
            //     ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //   ],
            // ),
            // Form(
            //   key: _formKey,
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Text(
            //             "Address:",
            //             style: TextStyle(fontSize: 20),
            //           ),
            //           Container(
            //             width: 220,
            //             height: 40,
            //             child: TextField(
            //                 controller: userAddress,
            //                 decoration: InputDecoration(
            //                   border: OutlineInputBorder(),
            //                   hintText: 'Enter Your Address',
            //                 )),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 20,
            //       ),
            //       Row(
            //         children: [
            //           Text(
            //             "Blood Group:",
            //             style: TextStyle(fontSize: 20),
            //           ),
            //           Container(
            //             width: 220,
            //             height: 40,
            //             child: TextField(
            //                 controller: userBloodGroup,
            //                 decoration: InputDecoration(
            //                   border: OutlineInputBorder(),
            //                   hintText: 'Enter Your Blood Group',
            //                 )),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 30,
            //       ),
            //       SizedBox(
            //         width: 200,
            //         height: 40,
            //         child: ElevatedButton(
            //           style: ElevatedButton.styleFrom(
            //             primary: Colors.lightBlue,
            //           ),
            //           // onPressed: () {
            //           //     Navigator.of(context).push(MaterialPageRoute(
            //           //       builder: (context) {
            //           //         return ThirdPage();

            //           //       }
            //           //     ));
            //           //   },
            //           onPressed: () {
            //             if (_formKey.currentState!.validate()) {
            //               Navigator.of(context).push(MaterialPageRoute(
            //                 builder: (context) {
            //                   return ThirdPage(
            //                     userBloodGroup: userBloodGroup.text,
            //                     userAddress: userAddress.text,
            //                   );
            //                 },
            //               ));
            //             }
            //           },

            //           child: Text('Submit'),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Padding addressbox(String address,TextEditingController controller) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(address),
                    SizedBox(
                      width: 200,
                      child: TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                         // hintText: address,
                          border: UnderlineInputBorder()
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}
