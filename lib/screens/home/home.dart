import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'components/list_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus contatos"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (context, index) => ListItem(),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 5,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        ),
    );
  }
}
