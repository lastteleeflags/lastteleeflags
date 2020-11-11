import 'package:flutter/material.dart';
import 'app_example/Login_Screen.dart';

class SettingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Xzr'),
            accountEmail: Text('Xzr@Gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(
                size: 42.0,
              ),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('หน้าหลัก'),
            // onTap: () {
            //   Navigator.push(
            //       // context, MaterialPageRoute(builder: (context) => Noti()));
            // },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('คำนวณ'),
            // onTap: () {
            //   Navigator.push(
            //       // context, MaterialPageRoute(builder: (context) => Setting()));
            // },
          ),
          ListTile(
            leading: Icon(Icons.card_travel),
            title: Text('ประวัติการเดินทาง'),
            // onTap: () {
            //   Navigator.push(
            //       // context, MaterialPageRoute(builder: (context) => Language()));
            // },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('โปรไฟล์'),
            // onTap: () {
            //   Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => Screen()));
            // },
            //
          ),
          ListTile(
            leading: Icon(Icons.remove_circle),
            title: Text('ออกจากระบบ'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
