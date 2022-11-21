import 'package:flutter/material.dart';
import 'package:login_app/pages/login/widgets/communs/login_comuns.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key? key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (((context, constraints) {
        final bool isMobile = constraints.maxWidth > 700;
        return isMobile
            ? const LoginCommun(
                height: 550,
                width: 500,
                sizeImage: 90,
                widthButton: 180,
                heightButton: 45,
                fontSize: 26,
                padding: 20,
                title: 'Gestão Florestal',
                image: 'images/gestao_icon.png',
              )
            : const LoginCommun(
                height: 400,
                width: 350,
                sizeImage: 65,
                widthButton: 130,
                heightButton: 36,
                fontSize: 18,
                padding: 13,
                title: 'Maquinas',
                image: 'images/maquina.png',
              );
      })),
    );
  }
}
