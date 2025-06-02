import 'package:flutter/material.dart';

class DetailsEmpleado extends StatelessWidget {
  // All new fields to receive data
  final String id_empleado;
  final String nombre;
  final String puesto;
  final String numero;
  final String direccion;
  final String email;
  final String sueldo;
  final String fecha_ingreso;

  const DetailsEmpleado({
    Key? key,
    required this.id_empleado,
    required this.nombre,
    required this.puesto,
    required this.numero,
    required this.direccion,
    required this.email,
    required this.sueldo,
    required this.fecha_ingreso,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Detalles del Empleado"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildDetailRow("ID Empleado:", id_empleado),
            _buildDetailRow("Nombre:", nombre),
            _buildDetailRow("Puesto:", puesto),
            _buildDetailRow("Número de Teléfono:", numero),
            _buildDetailRow("Dirección:", direccion),
            _buildDetailRow("Email:", email),
            _buildDetailRow("Sueldo:", sueldo),
            _buildDetailRow("Fecha de Ingreso:", fecha_ingreso),
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