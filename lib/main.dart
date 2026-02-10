import 'package:flutter/material.dart';

void main() => runApp(Appdeentrenamiento());

class Appdeentrenamiento extends StatelessWidget {
  const Appdeentrenamiento({super.key});
  

  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(title: 'Entrenamiento', home: ejercicio(),debugShowCheckedModeBanner: false,);
  }
} //fin clase app de entrenamiento

class ejercicio extends StatelessWidget {
  const ejercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      appBar: AppBar(
       
        title: Text("entrenamioento cancino"),
        backgroundColor: Colors.amberAccent,
        actions: [
          Icon(Icons.cabin),
          Icon(Icons.more),
          Icon(Icons.flag_circle)
        ],
      ), 

      drawer: Drawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 300, // Ancho controlado de la tarjeta
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // Degradado de negro suave a negro puro
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF333333), // Gris oscuro
              Color(0xFF000000), // Negro
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 15,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ajusta la altura al contenido
          children: [
            // Avatar
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white, // Borde blanco opcional
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=11', 
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Título
            const Text(
              'Alexander Cancino',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Subtítulo
            Text(
              'COACH DE ENTRENAMIENTO',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}

