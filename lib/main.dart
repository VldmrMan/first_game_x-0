import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_firstapp/GameRules.dart';
import 'package:portfolio_firstapp/GameBloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key); //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _getAppBar(),
        //  appBar: _getAppBar(),
        body: _getBody(),
        //bottomNavigationBar: null,
      ),
    );
  }

  Widget _getAppBar() {
    return AppBar(
      title: Text("data"),
    );
  }

  Widget _getBody() {
    return BlocProvider<GameBloc>(
        create: (context) => GameBloc(),
        child: BlocBuilder<GameBloc, GameRules>(builder: (context, gamerules) {
          //
          GameBloc dataBloc = BlocProvider.of<GameBloc>(context);
          //
          return Container(
            padding: EdgeInsets.only(top: 20),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(10),

              crossAxisSpacing: 10, //горизонтальное расстояние
              mainAxisSpacing: 10, //вертикальное расстояние
              crossAxisCount: 3,
              childAspectRatio: 1, //деформация
              children: <Widget>[
                FlatButton(
                    onPressed: gamerules.x1 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press1)
                        : null,
                    child: Text(gamerules.x1.toString())),
                FlatButton(
                    onPressed: gamerules.x2 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press2)
                        : null,
                    child: Text(gamerules.x2.toString())),
                FlatButton(
                    onPressed: gamerules.x3 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press3)
                        : null,
                    child: Text(gamerules.x3.toString())),
                FlatButton(
                    onPressed: gamerules.x4 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press4)
                        : null,
                    child: Text(gamerules.x4.toString())),
                FlatButton(
                    onPressed: gamerules.x5 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press5)
                        : null,
                    child: Text(gamerules.x5.toString())),
                FlatButton(
                    onPressed: gamerules.x6 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press6)
                        : null,
                    child: Text(gamerules.x6.toString())),
                FlatButton(
                    onPressed: gamerules.x7 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press7)
                        : null,
                    child: Text(gamerules.x7.toString())),
                FlatButton(
                    onPressed: gamerules.x8 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press8)
                        : null,
                    child: Text(gamerules.x8.toString())),
                FlatButton(
                    onPressed: gamerules.x9 == 0 && gamerules.winner == 0
                        ? () => dataBloc.add(GameEvetns.press9)
                        : null,
                    child: Text(gamerules.x9.toString())),
                FlatButton(
                    onPressed: () => dataBloc.add(GameEvetns.update),
                    child: Text("Update")),
                FlatButton(
                    onPressed: () => dataBloc.add(GameEvetns.serchwin),
                    child: Text("Проверка")),
                FlatButton(
                    onPressed: null, child: Text(gamerules.winner.toString())),
                FlatButton(
                    onPressed: () => dataBloc.add(GameEvetns.saawpplayer),
                    child: Text("swap")),
                FlatButton(
                    onPressed: null, child: Text(gamerules.carrent.toString())),
              ],
            ),
          );
        }));
  }

  Widget _getSocket(int content, var event) {
    return Container(
        child: FlatButton(onPressed: event, child: Text('$content')));
  }
}
