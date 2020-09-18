import 'package:flutter/material.dart';
import './login/login_page.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
        '/signIn': (context) => SignIn(),
        '/welcome': (context) => WelcomeScreen(),
        '/main': (context) => Main(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 400,
          child: Container(
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();

  double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    void _showWelcomeScreen() {
      Navigator.of(context).pushNamed('/welcome');
    }

    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // LinearProgressIndicator(value: _formProgress),
          // Text('Sign up', style: Theme.of(context).textTheme.headline4),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Colors.grey[300]),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Username',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Amanda Jane',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Colors.grey[300]),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'amanda@gmail.com',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Colors.grey[300]),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Phone',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '+ 65 2311 333',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Colors.grey[300]),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Date of birth',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '20/05/1990',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            // decoration: BoxDecoration(
            //     border: Border(
            //         bottom: BorderSide(width: 2, color: Colors.grey[300]))),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Address',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '123 Royal Street, New York',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // Padding(
          //   padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
          //   child: TextFormField(
          //     controller: _usernameTextController,
          //     decoration: InputDecoration(hintText: 'Address'),
          //   ),
          // ),
          // FlatButton(
          //   color: Colors.blue,
          //   textColor: Colors.white,
          //   onPressed: _showWelcomeScreen,
          //   child: Text('Sign up'),
          // ),
        ],
      ),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {}, // onpressd argument required
        ),
        backgroundColor: Colors.white,
        // actions: <Widget>[
        //   Align(
        //     alignment: Alignment.center,
        //     child: IconButton(
        //       icon: Icon(Icons.arrow_back),
        //       color: Colors.black,
        //       onPressed: () {}, // onpressd argument required
        //     ),
        //   )
        // ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            // Container(
            //   decoration: BoxDecoration(color: Colors.white),
            //   padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: IconButton(
            //       icon: Icon(Icons.arrow_back),
            //       color: Colors.black,
            //       onPressed: () {}, // onpressd argument required
            //     ),
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.fromLTRB(30, 10, 0, 30),
              child: Text(
                'Edits Profile',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              height: 200,
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                          'assets/images/5478kb.jpg'), // 本機一定要用AssetImage
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.lightBlue[200],
                        radius: 20,
                        child: Icon(
                          Icons.camera_enhance,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: Colors.white,
              child: SignUpScreen(),
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 1,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: IconButton(
                icon: Icon(Icons.search),
                color: Colors.blue[200],
                padding: EdgeInsets.all(0),
                onPressed: () {
                  print('dadsd');
                  Navigator.of(context).pushNamed('/welcome');
                },
              ),
            ),
            title: Text(
              'Explore',
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.blue[200],
                padding: EdgeInsets.all(0),
                onPressed: () {
                  print('dadsd');
                  Navigator.of(context).pushNamed('/welcome');
                },
              ),
            ),
            title: Text(
              'Trips',
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: IconButton(
                icon: Icon(Icons.person),
                color: Colors.blue[200],
                padding: EdgeInsets.all(0),
                onPressed: () {
                  print('dadsd');
                  Navigator.of(context).pushNamed('/welcome');
                },
              ),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome!', style: Theme.of(context).textTheme.headline2),
      ),
    );
  }
}
