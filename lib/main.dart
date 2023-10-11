import 'package:flutter/material.dart';

import 'api_services.dart';
import 'mobile_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('API Data using generated file'),
        ),
        body: const DataView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ApiService().postAPIData();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class DataView extends StatefulWidget {
  const DataView({super.key});

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  List<MobileModel> data = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getData();
    });
  }

  getData() async {
    try {
      List<MobileModel> mobileData = await ApiService().fetchMobileData();
      setState(() {
        data = mobileData;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        if (data.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        MobileModel mobile = data[index];
        return Card(
          child: ListTile(
            title: Text(mobile.mName),
            subtitle: Text("${mobile.mData.mColor}"),
            trailing: IconButton(
              onPressed: () {
                ApiService().deleteRecord(1);
              },
              icon: const Icon(Icons.delete),
            ),
            onLongPress: () {
              ApiService().deleteRecord(1);
            },
          ),
        );
      },
    );
  }
}
