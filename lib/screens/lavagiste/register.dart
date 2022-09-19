// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lavagecom_app/constants.dart';
import 'package:lavagecom_app/screens/lavagiste/login.dart';
import 'package:lavagecom_app/screens/lavagiste/packs.dart';

class Register_Lavageur extends StatefulWidget {
  const Register_Lavageur({Key? key}) : super(key: key);

  @override
  State<Register_Lavageur> createState() => _Register_LavageurState();
}

class _Register_LavageurState extends State<Register_Lavageur> {
  TimeOfDay timeOp = TimeOfDay(hour: 10, minute: 30);
  TimeOfDay timeCl = TimeOfDay(hour: 10, minute: 30);
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    // final hoursOp = timeOp.hour.toString().padLeft(2, '0');
    // final minutesOp = timeOp.minute.toString().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[50],
        title: Text(
          'Register',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body:
          // SingleChildScrollView(child:
          Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: Colors.deepPurple)),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: currentStep,
          onStepContinue: () {
            setState(() => {
                  if (currentStep == 3)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login_Lavageur()))
                    }
                  else
                    {currentStep += 1}
                });
          },
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
          onStepTapped: (step) {
            setState(() {
              currentStep = step;
            });
          },
          steps: [
            Step(
                isActive: currentStep >= 0,
                title: Text(
                  'Personal information',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'First name',
                          icon: Icon(Icons.account_box)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Last name',
                          icon: Icon(Icons.account_box)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Phone', icon: Icon(Icons.phone)),
                    ),
                  ],
                )),
            Step(
                isActive: currentStep >= 1,
                title: Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Building number', icon: Icon(Icons.home)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Street',
                          icon: Icon(Icons.location_on_outlined)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'City', icon: Icon(Icons.location_city)),
                    ),
                  ],
                )),
            Step(
                isActive: currentStep >= 2,
                title: Text(
                  'My services',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    imageLogo(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '${timeOp.hour}:${timeOp.minute}',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              child: Text('Select opening time'),
                              onPressed: () async {
                                TimeOfDay? newTime = await showTimePicker(
                                  context: context,
                                  initialTime: timeOp,
                                );
                                if (newTime == null) return;

                                setState(() => timeOp = newTime);
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(children: <Widget>[
                          Text(
                            '${timeCl.hour}:${timeCl.minute}',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            child: Text('Select closing time'),
                            onPressed: () async {
                              TimeOfDay? newTime = await showTimePicker(
                                context: context,
                                initialTime: timeCl,
                              );
                              if (newTime == null) return;

                              setState(() => timeCl = newTime);
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Packs();
                            }),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple[50],
                            onSurface: Colors.deepPurple,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            minimumSize: const Size(90, 50)),
                        child: Text(
                          'fill in the form of packs!',
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        )),
                  ],
                )),
            Step(
                isActive: currentStep >= 3,
                title: Text(
                  'Email address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'E-Mail', icon: Icon(Icons.email)),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password', icon: Icon(Icons.key)),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          icon: Icon(Icons.key_outlined)),
                    ),
                  ],
                )),
          ],
        ),
      ),
      // )
    );
  }

  Widget imageLogo() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 40.0,
            // ignore: unnecessary_null_comparison
            backgroundImage: _imageFile == null
                ? AssetImage("assets\icons\logo1.png")
                : FileImage(File(_imageFile!.path)) as ImageProvider,
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(Icons.camera_alt, color: Colors.black, size: 19.0),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Logo photo",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            )
          ]),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    // ignore: deprecated_member_use
    final PickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = PickedFile!;
    });
  }
}
