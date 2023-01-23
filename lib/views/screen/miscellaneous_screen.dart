import 'dart:io';

import 'package:cool_alert/cool_alert.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

import '../../res/mediaQuery.dart';

class Miscellaneous_Screen extends StatefulWidget {
  const Miscellaneous_Screen({Key? key}) : super(key: key);

  @override
  State<Miscellaneous_Screen> createState() => _Miscellaneous_ScreenState();
}

class _Miscellaneous_ScreenState extends State<Miscellaneous_Screen>
    with SingleTickerProviderStateMixin {
  late AnimationController loadingController;

  File? _file;
  PlatformFile? _platformFile;
  File? image;
  ImageSource? _imageSource;
  bool isLoading = true;
  bool? isGallery;
  takePhoto() async {
    // final imageTemporary;

    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image == null) {
      setState(() {
        _file = File(image!.path);

        _imageSource = ImageSource.camera;
      });
    }

    loadingController.forward();
  }

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg', 'pdf'],
    );

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          onPressed: () {
            CoolAlert.show(
              context: context,
              type: CoolAlertType.confirm,
              // text: 'Are you sure upload invoice',
              confirmBtnText: 'Yes',
              cancelBtnText: 'No',
              confirmBtnTextStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white),
              cancelBtnTextStyle: Theme.of(context).textTheme.bodyText1,
              confirmBtnColor: Theme.of(context).bottomAppBarColor,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              onConfirmBtnTap: () {
                Navigator.of(context).pop();
              },
              onCancelBtnTap: () {
                Navigator.of(context).pop();
              },
            );
          },
          child: Icon(
            Icons.send,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "Miscellaneous",
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 22,
                color: Colors.white,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              'Upload your others File',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 20,
                  ),
            ),
            GestureDetector(
              onTap:
                  // selectFile,
                  () => showModalBottomSheet(
                context: context,
                elevation: 10,
                builder: (context) => Container(
                  height: SizeVariables.getHeight(context) * 0.1,
                  padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.02,
                      top: SizeVariables.getHeight(context) * 0.01),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          takePhoto();
                          Navigator.of(context).pop();
                        },
                        child: SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.camera,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              SizedBox(
                                  width:
                                      SizeVariables.getWidth(context) * 0.05),
                              Text(
                                'Take A Photo',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: SizeVariables.getHeight(context) * 0.02),
                      InkWell(
                        onTap: () {
                          selectFile();
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.image,
                              color: Theme.of(context).colorScheme.background,
                            ),
                            SizedBox(
                                width: SizeVariables.getWidth(context) * 0.05),
                            Text(
                              'Choose From Gallery',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                ),
              ),
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    dashPattern: [10, 4],
                    strokeCap: StrokeCap.round,
                    color: Colors.blue.shade400,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Iconsax.folder_open,
                            color: Colors.blue,
                            size: 40,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Select your file',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            _platformFile != null
                ? Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selected File',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.file(
                                      _file!,
                                      width: 70,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _platformFile!.name,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${(_platformFile!.size / 1024).ceil()} KB',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade500),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          height: 5,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.blue.shade50,
                                          ),
                                          child: LinearProgressIndicator(
                                            value: loadingController.value,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ))
                : Container(),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
