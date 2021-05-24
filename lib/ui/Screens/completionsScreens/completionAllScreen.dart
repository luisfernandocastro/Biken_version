import 'package:biken/components/widgets/completionScreen.dart';
import 'package:flutter/material.dart';

class CompletionScreenPassword extends StatelessWidget {
  const CompletionScreenPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CompletionScreen(
      textPrimary: 'Genial!',
      textSecundary:
          '¡su contraseña se ha restablecido correctamente! ahora  inicie sesión con su nueva contraseña.',
      textButton: 'Iniciar Sesión',
      navegationRuta: '/login',
    );
  }
}

class CompletionScreenUpload extends StatelessWidget {
  const CompletionScreenUpload({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CompletionScreen(
      textPrimary: 'Felicitaciones!',
      textSecundary: '¡Has subido tu bici correctamente.',
      textButton: 'Aceptar',
      navegationRuta: '/ScreenHome',
    );
  }
}

class CompletionScreenRegister extends StatelessWidget {
  const CompletionScreenRegister({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CompletionScreen(
      textPrimary: 'Bienvenido',
      textSecundary: 'Te has Registrado correctamente en Biken!',
      textButton: 'Continuar',
      navegationRuta: '/ScreenHome',
    );
  }
}

class CompletionScreenComment extends StatelessWidget {
  const CompletionScreenComment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CompletionScreen(
      textPrimary: 'Listo!',
      textSecundary: 'Su comentario u opinión se ha enviado correctamente',
      textSubtitle: 'Gracias por compartir su comentario con nosotros',
      textButton: 'Aceptar',
      navegationRuta: '/screenUnable-no',
    );
  }
}
