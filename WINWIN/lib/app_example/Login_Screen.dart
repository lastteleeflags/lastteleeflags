import 'package:flutter/material.dart';

import '../gps.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Win Win'),
        ),
        //backgroundColor: const Color(0xFF0277BD),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.fromLTRB(10, 70, 0, 5),
                    child: Text(
                      'ยินดีต้อนรับ !',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'เริ่มต้นการใช้งานโดยกรอกเบอร์โทรศัพท์ของคุณที่นี่',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 21),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('ต่อไป'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MapSample()),
                        );

                        //print(nameController.text);
                        //print(passwordController.text);
                      },
                    )),

                // Container(
                //     child: Row(children: <Widget>[
                //   FlutterLogo(
                //     size: 50,
                //   ),
                //   Column(
                //     mainAxisSize: MainAxisSize.min,
                //     children: <Widget>[
                //       Text("WWW", style: TextStyle(fontSize: 20))
                //     ],
                //   )
                // ])),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('ดำเนินการต่อด้วย Facebook'),
                      onPressed: () {},
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('ดำเนินการต่อด้วย Google'),
                      onPressed: () {},
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('ดำเนินการต่อด้วย Apple ID'),
                      onPressed: () {},
                    )),
              ],
            )));
  }
}
