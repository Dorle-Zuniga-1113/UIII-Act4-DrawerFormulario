import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  // All new fields to receive data
  final String productId;
  final String productDescription;
  final String costo;
  final String nombre;
  final String instrucciones;
  final String ingredientes;
  final String caducidad;
  final String proveedor;

  const Details({
    Key? key,
    required this.productId,
    required this.productDescription,
    required this.costo,
    required this.nombre,
    required this.instrucciones,
    required this.ingredientes,
    required this.caducidad,
    required this.proveedor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Detalles del Producto"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildDetailRow("ID Producto:", productId),
            _buildDetailRow("Descripción:", productDescription),
            _buildDetailRow("Costo:", costo),
            _buildDetailRow("Nombre:", nombre),
            _buildDetailRow("Instrucciones:", instrucciones),
            _buildDetailRow("Ingredientes:", ingredientes),
            _buildDetailRow("Caducidad:", caducidad),
            _buildDetailRow("Proveedor:", proveedor),
          ],
        ),
      ),
    );
  }

  // Helper widget to build consistent detail rows
  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            value.isEmpty ? "N/A" : value, // Display N/A if value is empty
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const Divider(), // Add a divider for better separation
        ],
      ),
    );
  }
}