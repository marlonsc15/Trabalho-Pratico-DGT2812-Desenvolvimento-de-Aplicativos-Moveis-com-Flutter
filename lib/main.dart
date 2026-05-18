import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Color color = Colors.blue;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Rio de Janeiro',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Brasil',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(
      Color color,
      IconData icon,
      String label,
    ) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(
          color,
          Icons.call,
          'LIGAR',
        ),
        buildButtonColumn(
          color,
          Icons.near_me,
          'ROTA',
        ),
        buildButtonColumn(
          color,
          Icons.share,
          'COMPARTILHAR',
        ),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'O Rio de Janeiro é um dos destinos turísticos mais famosos do Brasil, '
        'conhecido por suas praias, montanhas e paisagens naturais impressionantes. '
        'A cidade oferece experiências únicas para turistas do mundo inteiro.',
        softWrap: true,
      ),
    );

    Widget listSection = Column(
      children: const [
        ListTile(
          leading: Icon(Icons.beach_access),
          title: Text('Pacote Praia'),
          subtitle: Text('5 dias - R\$ 2.500'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Pacote Montanha'),
          subtitle: Text('7 dias - R\$ 3.200'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Pacote Urbano'),
          subtitle: Text('3 dias - R\$ 1.800'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );

    return MaterialApp(
      title: 'Explore Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore Mundo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/RioImagem.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            listSection,
          ],
        ),
      ),
    );
  }
}