import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage(
      {Key? key, required this.userBloodGroup, required this.userAddress})
      : super(key: key);
  final String userBloodGroup;
  final String userAddress;
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
              top: 50,
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Blood Group:',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),

                Text(widget.userBloodGroup, style: TextStyle(fontSize: 20)),
                //Text(widget.userAddress),

                Text(
                  'Address:',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(widget.userAddress, style: TextStyle(fontSize: 20)),
                      //Text(widget.userAddress),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
