import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        //Início da App bar
        title: const Text("Charmander #004"),
        leading: Image.asset("assets/logo.png"),

      ),
      body: SingleChildScrollView(

        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,),

        width: MediaQuery.of(context).size.width, //Tamanho determinado do aapp
        child: Column(

          children: [
            Image.asset("assets/charmander.png"),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                    "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.")),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      //1 Linha 1
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
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      //2Linha
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          //1 coluna
                          children: [
                            titleText(text: "Tipo", context: context),
                            customChip(
                                label: "Fogo",
                                backgroundColor:
                                    const Color.fromARGB(223, 223, 97, 7),
                                context: context),
                          ],
                        ),
                        Column(
                          //2 coluna
                          children: [
                            titleText(text: "Habilidade", context: context),
                            subtitleText(text: "Chama", context: context)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 8,
                ),
                child: Text("Fraquezas", style: Theme.of(context).textTheme.titleLarge),
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                customChip(label: "Água", backgroundColor: const Color(0xFF688FF3), context: context),
                customChip(label: "Terra", backgroundColor: const Color (0xFFF6DE3E), context: context,),
                customChip(label: "Rocha", backgroundColor: const Color (0xFFA48C22), context: context)
            ],)
          ], //Child
         ),
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
          ),
      backgroundColor: backgroundColor,
    );
  }
}
