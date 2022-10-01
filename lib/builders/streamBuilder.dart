// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets2/dailogue.dart';

class FutureStreamW extends StatefulWidget {
  const FutureStreamW({super.key});

  @override
  State<FutureStreamW> createState() => _FutureStreamWState();
}

class _FutureStreamWState extends State<FutureStreamW> {
  TextEditingController messageController = TextEditingController();
  List<String> list = [];
  StreamSoket streamSoket = StreamSoket();

  Stream<int> StreamData() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 3));
      yield DateTime.now().second;
    }
  }

  @override
  void initState() {
    super.initState();
    list.add("hira");
    streamSoket.addResponse(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Stream"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: StreamBuilder(
                stream: streamSoket.getResponse,
                builder: ((context, AsyncSnapshot<List<String>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.connectionState == ConnectionState.done ||
                      snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return Text(snapshot.data![index].toString());
                          });
                    } else {
                      return const Text("Somthing went wrong");
                    }
                  }

                  return Text(snapshot.data.toString());
                })),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: messageController,
                  decoration: const InputDecoration(hintText: 'Enter message'),
                ),
              ),
              IconButton(
                  onPressed: () {
                    list.add(messageController.text.toString());
                    streamSoket.addResponse(list);
                  },
                  icon: const Icon(Icons.send))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const DailogueBox())));
        },
        child: const Icon(Icons.read_more),
      ),
    );
  }
}

// class
class StreamSoket {
  final _stream = StreamController<List<String>>.broadcast();
  void Function(List<String>) get addResponse =>
      _stream.sink.add; //for add data in screeen
  Stream<List<String>> get getResponse => _stream.stream.asBroadcastStream();
}
