import 'package:flutter/material.dart';
import '../code/globalstate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalState _store = GlobalState.instance;

  @override
  void initState() {
    _store.set('value', 0);
  }

  void _increment() {
    int value = _store.get('value');
    value++;
    setState(() => _store.set('value', value));
  }

  void _decrement() {
    int value = _store.get('value');
    value--;
    setState(() => _store.set('value', value));
  }

  void _onPressed() {
    Navigator.of(context).pushNamed('/Second');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Value ${_store.get('value')}'),
              IconButton(icon: const Icon(Icons.add), onPressed: _increment),
              IconButton(icon: const Icon(Icons.remove), onPressed: _decrement),
              ElevatedButton(
                child: const Text('Click me'),
                onPressed: _onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
