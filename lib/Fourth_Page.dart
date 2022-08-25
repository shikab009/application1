import 'dart:convert';

import 'package:application1/sidebar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sidebarx/sidebarx.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  final List<SideBarModel> _sideBarItemList = [
    SideBarModel(
      label: 'Home',
      icon: Icons.home,
    ),
    SideBarModel(
      label: 'User',
      icon: Icons.person,
    ),
    SideBarModel(
      label: 'Security',
      icon: Icons.lock,
    ),
    SideBarModel(
      label: 'Comment',
      icon: Icons.add_comment_rounded,
    ),
    SideBarModel(
      label: 'Contact',
      icon: Icons.add_location,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            SidebarX(
              controller: _controller,
              theme: SidebarXTheme(
                  hoverColor: Colors.white,
                  selectedItemDecoration: BoxDecoration(color: Colors.white),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 192, 186, 170),
                  )),
              extendedTheme: const SidebarXTheme(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                  )),
              items: [
                ..._sideBarItemList
                    .map((e) => SidebarXItem(
                          icon: e.icon,
                          label: e.label,
                        ))
                    .toList()
              ],
            ),

            Expanded(
              child: SideBarScreen(
             sideBarController: _controller,
              )
            
            )
          ],
        ),
      ),
    );
  }
}


class SideBarModel {
  final String? label;
  final IconData? icon;

  SideBarModel({this.label, this.icon});
}
