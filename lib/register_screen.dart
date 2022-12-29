import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(const RegisterScreen());

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: RegisterStatefulWidget(),
      ),

    );
  }
}

class RegisterStatefulWidget extends StatefulWidget {
  const RegisterStatefulWidget({Key? key}) : super(key: key);

  @override
  State<RegisterStatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterStatefulWidget> {
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
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 100),
                      child:
                      const Text(
                        'Find and Meet people around \n you to find LOVE',
                        style: TextStyle(fontSize: 15, color: Color(0xFFf9fcff)),
                        textAlign: TextAlign.center,
                      )
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    height: 90,
                    child: TextButton(
                      onPressed: () {  },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(40, 10, 40, 0),),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0),
                                  side: const BorderSide(color: Colors.red)
                              )
                          )
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xffffffff),
                            child: IconButton(
                              icon:  const Image(image: AssetImage('ic_fb.png'), height: 50,  ),
                              onPressed: () { },
                            ),
                          ),
                          const Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                                color: Color(0xFFf12776),
                                fontSize: 20.0,
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    height: 90,
                    child: TextButton(
                        onPressed: () {  },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(40, 10, 40, 0),),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                    side: const BorderSide(color: Colors.red)
                                )
                            )
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: const Color(0xffffffff),
                              child: IconButton(
                                icon:  const Image(image: AssetImage('ic_tw.png'), height: 50,  ),
                                onPressed: () { },
                              ),
                            ),
                            const Text(
                              'Sign in with Twitter',
                              style: TextStyle(
                                  color: Color(0xFFf12776),
                                  fontSize: 20.0,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    height: 90,
                    child: TextButton(
                        onPressed: () {  },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(40, 10, 40, 0),),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                    side: const BorderSide(color: Colors.red)
                                )
                            )
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFFf12776),
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),

                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 100),
                      child: TextButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyStatefulWidget())
                          )
                        },
                        child: const Text(
                          'ALREADY REGISTERED? SIGN IN',
                          style: TextStyle(fontSize: 14, color: Color(0xFFf9fcff), fontWeight: FontWeight.bold, decoration: TextDecoration.underline, decorationColor: Colors.white,),
                          textAlign: TextAlign.center,

                        ),
                      )
                  ),
                ],
              )
          )
      ),
    );
  }
}