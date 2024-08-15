import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Tarjeta vertical',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titulos = [
    "ROJO",
    "AMARILLO",
    "CIAN",
    "Atondo",
    "GRIS",
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Column(
          children: <Widget>[
            // Usamos el widget Image para mostrar una imagen
            Image(
              fit: BoxFit.contain,
              height: 100,
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/maatondo87/p6carruselAtondo/main/cervezas/indio.png"),
            ),

            // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            // Usamos el widget Image para mostrar una imagen
            Image(
              fit: BoxFit.contain,
              height: 100,
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/maatondo87/p6carruselAtondo/main/cervezas/corona.png"),
            ),

            // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            // Usamos el widget Image para mostrar una imagen
            Image(
              fit: BoxFit.contain,
              height: 100,
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/maatondo87/p6carruselAtondo/main/cervezas/victoria.png"),
            ),

            // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            // Usamos el widget Image para mostrar una imagen
            Image(
              fit: BoxFit.contain,
              height: 100,
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                  "https://raw.githubusercontent.com/maatondo87/p6carruselAtondo/main/cervezas/ultra.png"),
            ),

            // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            // Usamos el widget Image para mostrar una imagen
            Image(
              fit: BoxFit.contain,
              height: 100,
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: NetworkImage(
                  "https://raw.githubusercontent.com/maatondo87/p6carruselAtondo/main/cervezas/ultra.png"),
            ),

            // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Atondo vertical',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titulos,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
