import 'package:application1/FrontPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarScreen extends StatefulWidget {
  final SidebarXController sideBarController;
  const SideBarScreen({Key? key, required this.sideBarController})
      : super(key: key);

  @override
  State<SideBarScreen> createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.sideBarController,
        builder: (context, child) {
          final String pageTitle =
              _getTitleByIndex(widget.sideBarController.selectedIndex);
          switch (widget.sideBarController.selectedIndex) {
            case 0:
              return RedWidget();
            case 1:
              return FrontPage();
            default:
              return Text(pageTitle);
          }
        });
  }

  String _getTitleByIndex(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'User';
      case 2:
        return 'Security';
      case 3:
        return 'Comment';
      default:
        return 'Not found page';
    }
  }
}

class RedWidget extends StatelessWidget {
  const RedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
