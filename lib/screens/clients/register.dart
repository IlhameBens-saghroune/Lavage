// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lavagecom_app/constants.dart';


import 'login.dart';

class Register_Client extends StatefulWidget {
  const Register_Client({Key? key}) : super(key: key);

  @override
  State<Register_Client> createState() => _Register_ClientState();
}

class _Register_ClientState extends State<Register_Client> {
   int currentStep = 0;
  @override
  Widget build(BuildContext context) {
   
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
      //SingleChildScrollView(child: 
      Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: Colors.deepPurple)),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: currentStep,
         onStepContinue: () {
           setState(() => {
                if(currentStep ==2){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Login_Client()))
                }else {
                    currentStep +=1
                }
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
                      decoration: InputDecoration(labelText: 'First name',  icon: Icon(Icons.account_box)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Last name', icon: Icon(Icons.account_box)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Phone',icon: Icon(Icons.phone) ),
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
                      decoration:
                          InputDecoration(labelText: 'Building number ', icon: Icon(Icons.home)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Street',  icon: Icon(Icons.location_on_outlined)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City', icon: Icon(Icons.location_city)),
                    ),
                  ],
                )),
            Step(
                isActive: currentStep >= 2,
                title: Text(
                  'Email address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'E-Mail', icon: Icon(Icons.email)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password', icon: Icon(Icons.key)),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Confirm Password', icon: Icon(Icons.key_outlined)),
                    ),

                  ],
                )),
          ],
        ),
      ),
    //)
    );
  }
}
