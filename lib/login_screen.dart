import 'package:flutter/material.dart';
import 'register_screen.dart';

void main() => runApp(const LoginScreen());

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),

    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-1,-1),
                end: Alignment(1.7,0),
                colors: [
                  Color.fromRGBO(255,119,69,1),
                  Color.fromRGBO(246,53,108,1)
                ]
            )
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('connexion.png'), height: 150, ),
                ),
                Container(
                    alignment: Alignment.center,
                    child: const Text.rich(
                        TextSpan(
                            text: '',
                            children: <TextSpan> [
                              TextSpan(text: 'CONN', style: TextStyle(color: Color(0xFFf12776), fontSize: 28, fontWeight: FontWeight.bold)),
                              TextSpan(text: ' EXION', style: TextStyle(color: Color(0xFFf9fcff), fontSize: 28, fontWeight: FontWeight.bold))
                            ]
                        )
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child:
                    const Text(
                      'Find and Meet people around \n you to find LOVE',
                      style: TextStyle(fontSize: 15, color: Color(0xFFf9fcff)),
                      textAlign: TextAlign.center,
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFf9fcff)),
                    )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Enter Email',
                      enabledBorder: UnderlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: BorderSide(color: Colors.white),
                      ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        )
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        enabledBorder: UnderlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        )
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                                (states) => const BorderSide(width: 1.0, color: Colors.white),
                          ),
                          checkColor: Colors.white,
                          activeColor: const Color.fromRGBO(249, 108, 48, 1),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const Text(
                          'Remember Password',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                  height: 70,
                  child: TextButton(
                    onPressed: () {  },
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(40, 10, 40, 0),),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: const BorderSide(color: Colors.red)
                            )
                        )
                    ),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                          color: Color(0xFFf12776),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(150, 30, 150, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xffffffff),
                        child: IconButton(
                          icon:  const Image(image: AssetImage('ic_fb.png'), height: 50,  ),
                          onPressed: () { },
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xffffffff),
                        child: IconButton(
                          icon:  const Image(image: AssetImage('ic_tw.png'), height: 50,  ),
                          onPressed: () { },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(fontSize: 14, color: Color(0xFFf9fcff), fontWeight: FontWeight.bold, decoration: TextDecoration.underline, decorationColor: Colors.white,),
                    textAlign: TextAlign.center,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterStatefulWidget())
                          )
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffcb1f51),
                            fixedSize: Size(MediaQuery.of(context).size.width, 50)
                        ),
                        child: const Text.rich(TextSpan(
                          text: 'DON\'T HAVE AN ACCOUNT?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(254, 115, 72, 1),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' SIGN UP',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline)
                            ),
                          ],
                        )),
                      )
                    )
                  ],
                ),
              ],
            ))
      ),
    );
  }
}