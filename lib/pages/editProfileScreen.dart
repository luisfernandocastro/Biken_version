import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:biken/styles/biken_icons_icons.dart';
import 'package:biken/components/widgets/botonPrincipal.dart';
import 'package:biken/components/widgets/circle_avatarprofile.dart';
import 'package:biken/components/widgets/containerButton.dart';
import 'package:biken/pages/profile_screen.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({Key key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    const profileImage =
        'https://cdn.forbes.com.mx/2019/04/blackrrock-invertir-1-640x360.jpg';
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Stack(
            children: [
              ImagePortada(),
              Positioned(
                top: 150,
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 55, right: 10.0, left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Spacer(),
                        ContainerButton(
                          title: 'Editar Nombres y Apellidos',
                          subtitle: 'Maria Gutierrez',
                          iconLeading: Icons.drive_file_rename_outline,
                          iconTrailing: Icons.arrow_forward_ios_rounded,
                        ),
                        Spacer(),
                        ContainerButton(
                          title: 'Editar Nombre de Usuario',
                          subtitle: 'Maria_g25',
                          iconLeading: Icons.how_to_reg_outlined,
                          iconTrailing: Icons.arrow_forward_ios_rounded,
                        ),
                        Spacer(),
                        ContainerButton(
                          title: 'Cambiar Correo Eléctronico',
                          subtitle: 'Mcailag25@gmail.com',
                          iconLeading: BikenIcons.google,
                          iconTrailing: Icons.arrow_forward_ios_rounded,
                        ),
                        Spacer(),
                        ContainerButton(
                          title: 'Cambiar Contraseña',
                          subtitle: '***********',
                          iconLeading: Icons.password,
                          iconTrailing: Icons.arrow_forward_ios_rounded,
                        ),
                        Spacer(),
                        ContainerButton(
                          title: 'Cambiar número Teléfonico',
                          subtitle: '+57 3216785432',
                          iconLeading: Icons.phone,
                          iconTrailing: Icons.arrow_forward_ios_rounded,
                        ),
                        Spacer(),
                        BotonPrincipal(
                          marginHorizontal: 25.0,
                          textBoton: 'Aceptar',
                          ruta: null,
                          tag: 'btneditprofile',
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 1,
                left: 1,
                top: 45,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 115),
                      child: Text(
                        'Maria Gutierrez',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#2059BD'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        ' Editar Perfil',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#000000'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 1,
                left: 1,
                top: 30,
                child: Hero(
                  tag: profileImage,
                  child: AvatarIcon(
                    profileImage: profileImage,
                    child: SizedBox(),
                    height: 105.0,
                    width: 105.0,
                    marginColor: HexColor('#2059BD'),
                    marginWidth: 1.5,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
