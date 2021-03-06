// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'
    as functions; // Imports custom functions
import 'package:flutter/material.dart';
import '../actions/index.dart' as actions;
import 'package:my_first_project/app_state.dart';

// Begin custom widget code
class FieldCounter extends StatefulWidget {
  const FieldCounter({
    Key key,
    this.width,
    this.height,
    this.produto,
  }) : super(key: key);

  final double width;
  final double height;
  final ProdutoRecord produto;

  @override
  _FieldCounterState createState() => _FieldCounterState();
}

class _FieldCounterState extends State<FieldCounter> {
  var _counter = FFAppState().qtd;

  final TextEditingController _controller =
      TextEditingController(text: 1.toString());

  void increment() {
    _counter++;
    _controller.text = _counter.toString();
    setState(() {
      FFAppState().qtd = _counter;
    });
    actions.calcDesconto(
      double.parse(_controller.text),
      functions.calcPrecoLiquido(widget.produto.salePrice, FFAppState().qtd),
    );
    setState(() => FFAppState().desconto =
        functions.calcPrecoLiquido(widget.produto.salePrice, FFAppState().qtd));
    setState(() {});
  }

  void decrement() {
    _counter--;
    _controller.text = _counter.toString();
    setState(() {
      FFAppState().qtd = _counter;
    });
    actions.calcDesconto(
      double.parse(_controller.text),
      functions.calcPrecoLiquido(widget.produto.salePrice, FFAppState().qtd),
    );
    setState(() => FFAppState().desconto =
        functions.calcPrecoLiquido(widget.produto.salePrice, FFAppState().qtd));
    setState(() {});
  }

  void updateChange() {
    _controller.text = _counter.toString();
    setState(() {
      FFAppState().qtd = _counter;
    });
    _counter = int.parse(_controller.text);
    actions.calcDesconto(
      double.parse(_controller.text),
      functions.calcPrecoLiquido(widget.produto.salePrice, FFAppState().qtd),
    );
    setState(() => FFAppState().desconto =
        functions.calcPrecoLiquido(widget.produto.salePrice, FFAppState().qtd));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: decrement,
          ),
          SizedBox(
            width: 50,
            height: 30,
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.bottom,
              controller: _controller,
              onChanged: (_) => updateChange(),
              onSubmitted: (_) => updateChange(),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: increment,
          )
        ]),
      ),
    );
  }
}
