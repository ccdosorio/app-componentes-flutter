import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(
                child: _crearImagen(),
              ),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la image',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/474x/8c/1f/17/8c1f17ba7d37b18c575bb23092685ccf.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (bool? value) {
    //     setState(() {
    //       _bloquearCheck = value!;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (bool? value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (bool? value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );
  }
}
