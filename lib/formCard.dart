import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: Container(
        width: 250,
        height: 500,
        decoration: new BoxDecoration(
            color: Color.fromARGB(255, 48, 81, 116).withOpacity(0.5)),
        child: Column(children: [
          Container(
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Войти',
                  ),
                  Tab(
                    text: 'Регистрация',
                  ),
                ]),
          ),
          Container(
            width: 250,
            height: 400,
            child: TabBarView(controller: _tabController, children: [
              Container(
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'username',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                  )
                )
              ],),

                ]),
              ),
              Container(
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'username',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                ]),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
