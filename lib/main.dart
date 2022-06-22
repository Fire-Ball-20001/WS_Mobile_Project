import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Project',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Readme Project'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: SizedBox.expand(
        child: ListView(
          children: [
            Column(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Расписания",
                  style: TextStyle(
                    fontSize: 48,
                    color: Color.fromARGB(255, 125, 125, 125),
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 5, 20),
                  child: Column(
                    children: const [
                      Text(
                        'Описание: ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Данный сервис должен будет показывать школьное расписание а также школьные новости.'
                        ' У детей будут функции оставлять заметки насчёт уроков и ставить напоминание об уроках. '
                        'У учитилей будут теже функции, что и выше, и несколько дополнительных: '
                        'Добавление уроков, изменение своих уроков, и полная отмена уроков. Также, если '
                        'есть изменения в базовом расписании, всем (кто поставил галочку) будут приходить за день'
                        ' (или в другое время, зависит от нескольких факторов) уведомления об этом.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () async => {
                    Clipboard.setData(const ClipboardData(
                        text:
                            "https://github.com/Fire-Ball-20001/WS_Mobile_Project/tree/dev")),
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Ссылка скопирована"),
                        behavior: SnackBarBehavior.floating,
                        width: 175,
                        backgroundColor: Color.fromARGB(200, 100, 100, 100),
                      ),
                    )
                  },
                  style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(const Size(55, 55)),
                    minimumSize: MaterialStateProperty.all(const Size(55, 55)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(150, 200, 200, 200)),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/github.svg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
