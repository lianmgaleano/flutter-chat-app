import 'package:flutter/material.dart';

import 'package:chat_app/widgets/boton_azul.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';

class RegisterPage extends StatelessWidget {

    const RegisterPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

        return Scaffold(
            backgroundColor: const Color(0xffF2F2F2),
            body: SafeArea(
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[

                                Logo(title: 'Registro'),

                                _Form(),

                                Labels(route: 'login', title: '¿Ya tienes una cuenta?', subtitle: 'Ingresa ahora!'),

                                Text('Términos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200),)

                            ],
                        ),
                    ),
                ),
            )
        );

    }

}

class _Form extends StatefulWidget {

    const _Form({super.key});

    @override
    _FormState createState() => _FormState();

}

class _FormState extends State<_Form> {

    final nameCtrl = TextEditingController();
    final emailCtrl = TextEditingController();
    final passwordCtrl = TextEditingController();

    @override
    Widget build(BuildContext context) {

        return Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
                children: <Widget>[

                    CustomInput(icon: Icons.perm_identity, placeholder: 'Nombre', textController: nameCtrl),

                    CustomInput(icon: Icons.mail_outline, placeholder: 'Correo', keyboardType: TextInputType.emailAddress, textController: emailCtrl),

                    CustomInput(icon: Icons.lock_outline, placeholder: 'Contraseña', textController: passwordCtrl, isPassword: true),

                    BotonAzul(
                        text: 'Ingrese',
                        onPress: () {
                            print(emailCtrl.text);
                            print(passwordCtrl.text);
                        },
                    )

                ],
            ),
        );

    }

}

