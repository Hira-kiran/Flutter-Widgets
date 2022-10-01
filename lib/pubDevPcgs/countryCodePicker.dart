// ignore_for_file: file_names, avoid_print

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../builders/futureBuilder.dart';

class CountryCode extends StatefulWidget {
  const CountryCode({super.key});

  @override
  State<CountryCode> createState() => _CountryCodeState();
}

String countryCode = '';

class _CountryCodeState extends State<CountryCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Country Code Picker"),
        ),
        body: Column(
          children: [
            Text(countryCode),
            Center(
              child: TextButton(
                onPressed: () {
                  showCountryPicker(
                      //properties
                      countryListTheme: CountryListThemeData(
                          flagSize: 19,
                          textStyle: const TextStyle(fontSize: 20),
                          borderRadius: BorderRadius.circular(100),
                          inputDecoration: const InputDecoration(
                              hintText: 'Type here', labelText: 'Search')),
                      favorite: ['pk', 'china'],
                      context: context,
                      onSelect: (Country value) {
                        print(value.countryCode.toString());
                        print(value.phoneCode.toString());

                        countryCode = value.phoneCode.toString();

                        setState(() {});
                      });
                },
                child: const Text("Show Country Code"),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FutureBuilderW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
