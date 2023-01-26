import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/dataDiri_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<dataDiriProvider>(context, listen: false).getAlldataDiris();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('diri'),
      ),
      body: Consumer<dataDiriProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final datadiris = value.datadiris;

          return ListView.builder(
            itemCount: datadiris.length,
            itemBuilder: (context, index) {
              final datadiri = datadiris[index];

              return ListTile(
                leading: CircleAvatar(
                  child: Text(datadiri.nama),
                ),
              );
            },
          );
        },
      ),
    );
  }
}