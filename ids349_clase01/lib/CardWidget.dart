import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  CardWidget({required this.icono, required this.texto, super.key,});

  final IconData icono;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Icon(icono,
            color: Colors.teal.shade900,
          ),
          title: Text(texto,
            style: GoogleFonts.laila(
                color: Colors.teal.shade700
            ),
          ),
        ),
      ),
    );
  }
}