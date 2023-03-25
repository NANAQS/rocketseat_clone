import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

import '../widgets/custom_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shape: const Border(
          bottom:
              BorderSide(color: Color.fromRGBO(87, 87, 87, 0.494), width: 1),
        ),
        backgroundColor: const Color(0xFF131215),
        toolbarHeight: 80,
        title: Row(
          children: [SvgPicture.asset("assets/rocketseat.svg")],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.rocketseat.com.br/_next/image?url=%2Fimages%2Fhome%2Fhero-background.png&w=1920&q=100"))),
                child: Column(children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Hello World",
                    style: TextStyle(
                      color: Color(0xFF04D355),
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    "Acelere cada etapa da sua\ncarreira em programação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "O mapa completo para você impulsionar sua evolução e acessar\nas melhores oportunidades da sua carreira como dev.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    onClick: () {},
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
