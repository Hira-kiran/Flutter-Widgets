// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../Widgets/snackBar.dart';

class PincodeFieldW extends StatelessWidget {
  const PincodeFieldW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pincode Feild Widget")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PinCodeTextField(
            enableActiveFill: true,

            // enablePinAutofill: true,
            pinTheme: PinTheme.defaults(
                shape: PinCodeFieldShape.box,
                activeColor: Colors.purple,
                selectedColor: Colors.grey,
                activeFillColor: Colors.red,
                inactiveFillColor: Colors.lime,
                borderRadius: BorderRadius.circular(20)),
            keyboardType: TextInputType.number,
            appContext: context,
            length: 6,
            obscureText: true,
            cursorColor: Colors.brown,
            onChanged: ((value) {}),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Snackbar(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
