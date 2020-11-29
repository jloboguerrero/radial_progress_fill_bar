import 'package:flutter/material.dart';

import 'package:circle_fill/src/widgets/radial_progress.dart';

class GraficasCircularPage extends StatefulWidget {
  @override
  _GraficasCircularPageState createState() => _GraficasCircularPageState();
}

class _GraficasCircularPageState extends State<GraficasCircularPage> {
  double porcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          setState(() {
            porcentaje += 10;
            if (porcentaje > 100) {
              porcentaje = 0;
            }
          });
        },
        child: Icon(Icons.refresh),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomRadialProgress(
              porcentaje: porcentaje,
              color: Colors.red,
              tamano: 180,
              grosorP: 10,
              grosorS: 4,
            ),
            Divider(),
            CustomRadialProgress(
              porcentaje: porcentaje,
              color: Colors.blueAccent,
              tamano: 70,
              grosorP: 4,
              grosorS: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRadialProgress extends StatelessWidget {
  final Color color;
  final int tamano;
  final double grosorP;
  final double grosorS;

  const CustomRadialProgress({
    @required this.porcentaje,
    @required this.color,
    this.tamano,
    this.grosorP,
    this.grosorS,
  });

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.tamano.toDouble(),
      height: this.tamano.toDouble(),
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: this.color,
        colorSecundario: Colors.grey,
        grosorSecundario: grosorS,
        grosorPrimario: grosorP,
      ),
    );
  }
}
