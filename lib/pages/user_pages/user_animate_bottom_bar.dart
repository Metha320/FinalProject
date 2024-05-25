import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:s_pro/pages/user_pages/DoctorList.dart';
import 'package:s_pro/pages/user_pages/homepage.dart';
import 'User_account.dart';

class user_BottomNavBar_ extends StatefulWidget {
  @override
  _user_BottomNavBar_State createState() => _user_BottomNavBar_State();
}

class _user_BottomNavBar_State extends State<user_BottomNavBar_> {
  int pageIndex = 1;
  final homepage_ homePage = homepage_();
  final doctorList_ doctorList = new doctorList_();
  final userAccount_ userAccount = new userAccount_();
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  Widget _showPage = new homepage_();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return doctorList;
        break;
      case 1:
        return homePage;
        break;
      case 2:
        return userAccount;
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
                      'images/homeIcon1.png',
                      height: 20,
                      width: 20,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'แพทย์',
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
                      'images/homeIcon3.png',
                      height: 20,
                      width: 20,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'บัญชี',
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
