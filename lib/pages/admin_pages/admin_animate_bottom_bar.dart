import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:s_pro/pages/admin_pages/admin_homepage.dart';
import 'package:s_pro/pages/admin_pages/logout.dart';
import 'package:s_pro/pages/admin_pages/version_page.dart';

class admin_BottomNavBar_ extends StatefulWidget {
  @override
  _admin_BottomNavBar_State createState() => _admin_BottomNavBar_State();
}

class _admin_BottomNavBar_State extends State<admin_BottomNavBar_> {
  int pageIndex = 1;
  final admin_homepage_ homePage_admin = admin_homepage_();
  final version_ ver = new version_();
  final logout_ logout = new logout_();
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  Widget _showPage = new admin_homepage_();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return ver;
        break;
      case 1:
        return homePage_admin;
        break;
      case 2:
        return logout;
        break;
      default:
        return new Container(
          child: Text("Not Loading"),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 65.0,
          items: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image.asset(
                      'images/version.png',
                      height: 20,
                      width: 20,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Version',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image.asset(
                      'images/homeIcon2.png',
                      height: 20,
                      width: 20,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'หน้าหลัก',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image.asset(
                      'images/logout.png',
                      height: 20,
                      width: 20,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Log out',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOutCubicEmphasized,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: _showPage,
        ));
  }
}
