import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Início da App bar
        title: Text("Charmander #004"),
        leading: Image.asset("assets/logo.png"),
      ),
      body: SizedBox(
        //Corpo do APP

        width: MediaQuery.of(context).size.width, //Tamanho determinado do aapp

        child: Column(
          //Coluna
          children: [
            Image.asset("assets/charmander.png"),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                    "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.")),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    //1 Linha 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          //1 coluna
                          children: [
                            titleText(text: "Altura", context: context),
                            subtitleText(text: "0.6m", context: context)
                          ],
                        ),
                        Column(
                          //2 coluna
                          children: [
                            titleText(text: "Peso", context: context),
                            subtitleText(text: "8.5kg", context: context)
                          ],
                        ),
                      ],
                    ),
                    //2 Linha
                    Row(
                      children: [
                        //1 coluna
                        Column(
                          children: [],
                        ),
                        //2 coluna
                        Column(
                          children: [],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  } //Build

  Text titleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(text,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ));
  } //Build

  Text subtitleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  customChip({
    required String label,
    required Color backgroundColor,
    required BuildContext context,
  }) {
    return Chip(
      label: Text(label),
      labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Colors.white,
            backgroundColor: backgroundColor,
          ),
    );
  }
}
