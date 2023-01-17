import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _idObscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_idObscure);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In System"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/login.png'),height: 200,width: 300,),
          Container(
            child: Text("SIGN IN SYSTEM"),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscureText: _idObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _idObscure = !_idObscure;
                        print(_idObscure);
                      });
                    },
                    icon: Icon(_idObscure == false
                    ? Icons.visibility
                    : Icons.visibility_off,
                    ),
                ),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {

              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
