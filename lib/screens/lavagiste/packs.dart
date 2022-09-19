import 'package:flutter/material.dart';
import 'package:lavagecom_app/screens/lavagiste/register.dart';

class Packs extends StatefulWidget {
  const Packs({Key? key}) : super(key: key);

  @override
  State<Packs> createState() => _Packs();
}

class _Packs extends State<Packs> {
  @override
  Widget build(BuildContext context) {
    resizeToAvoidBottomInset:
    true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[50],
        title: const Text(
          'My packs',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            //  child: Column(
            //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //  children: [
            Text(
              'First pack:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 79, 117, 182),
                  fontSize: 20.0),
            ),

            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Pack name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Duration',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'The average price',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15.0,
            ),

            Text(
              'Second pack:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 79, 117, 182),
                  fontSize: 20.0),
            ),

            TextFormField(
                decoration: const InputDecoration(
              labelText: 'Pack name',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
                decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Duration',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
                decoration: const InputDecoration(
              labelText: 'The average price',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 15.0,
            ),

            Text(
              'Third pack:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 79, 117, 182),
                  fontSize: 20.0),
            ),

            TextFormField(
                decoration: const InputDecoration(
              labelText: 'Pack name',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
                decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Duration',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
                decoration: const InputDecoration(
              labelText: 'The average price',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 15.0,
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Register_Lavageur();
                    }),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    //onSurface: Colors.deepPurple,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    minimumSize: const Size(90, 50)),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.deepPurple[50],
                  ),
                ))
          ])),
    );
  }
}
