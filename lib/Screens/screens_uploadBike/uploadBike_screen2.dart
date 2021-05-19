import 'dart:io';

import 'package:biken/components/widgets/botonPrincipal.dart';
import 'package:biken/components/widgets/card_upload.dart';
import 'package:biken/components/widgets/containerButton.dart';
import 'package:biken/components/widgets/transicionCirculares.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ScreenUploadBike2 extends StatefulWidget {
  ScreenUploadBike2({Key key}) : super(key: key);

  @override
  _ScreenUploadBike2State createState() => _ScreenUploadBike2State();
}

class _ScreenUploadBike2State extends State<ScreenUploadBike2> {
  String imagePath;
  bool checkedValue = false;
  bool newValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CirculosNumericos(
                        numero: '1',
                        colorCirculo: Color.fromRGBO(32, 89, 189, 1),
                      ),
                      CirculosNumericos(
                        numero: '2',
                        colorCirculo: Color.fromRGBO(32, 89, 189, 1),
                      ),
                      CirculosNumericos(
                        numero: '3',
                        colorCirculo: Color.fromRGBO(32, 89, 189, 0.5),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Spacer(),
                  Text('Sube una foto de tu Bicicleta'),
                  Spacer(),
                  ContainerButton(
                    title: 'Tomar foto',
                    iconLeading: Icons.camera_alt_outlined,
                    activateSubtitle: false,
                    actionOnTap: () async {
                      final ImagePicker _picker = ImagePicker();
                      PickedFile _pickedFile =
                          await _picker.getImage(source: ImageSource.camera);
                      imagePath = _pickedFile.path;
                      setState(() {});
                    },
                  ),
                  Spacer(),
                  ContainerButton(
                    title: 'Subir desde Galeria',
                    iconLeading: Icons.photo_library_outlined,
                    activateSubtitle: false,
                    actionOnTap: () async {
                      final ImagePicker _picker = ImagePicker();
                      PickedFile _pickedFile =
                          await _picker.getImage(source: ImageSource.gallery);
                      imagePath = _pickedFile.path;
                      setState(() {});
                    },
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardsUpload(
                          sizeHeight: 150,
                          sizeWidth: 180,
                          child: (imagePath == null)
                              ? Container()
                              : Image.file(
                                  File(imagePath),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  BotonPrincipal(
                    marginHorizontal: 25.0,
                    textBoton: 'Terminar',
                    ruta: '/completionScreenUpload',
                    tag: 'FinishUpload',
                  ),
                  Spacer(),
/*                     Checkbox(
                    checkColor: HexColor('#2059BD'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    activeColor: HexColor('#2059BD'),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                  ) */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
