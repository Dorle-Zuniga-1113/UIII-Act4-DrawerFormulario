import 'package:flutter/material.dart';
import 'package:myapp/formulario/form_Details.dart';

class Productos extends StatefulWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  State<Productos> createState() => _MyFormState();
}

class _MyFormState extends State<Productos> {
  // Declare separate controllers for each text field
  final _productIdController = TextEditingController();
  final _productDesController = TextEditingController();
  final _costoController = TextEditingController();
  final _nombreController = TextEditingController();
  final _instruccionesController = TextEditingController();
  final _ingredientesController = TextEditingController();
  final _caducidadController = TextEditingController();
  final _proveedorController = TextEditingController();

  @override
  void dispose() {
    // Dispose all controllers to free up resources
    _productIdController.dispose();
    _productDesController.dispose();
    _costoController.dispose();
    _nombreController.dispose();
    _instruccionesController.dispose();
    _ingredientesController.dispose();
    _caducidadController.dispose();
    _proveedorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Productos"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _productIdController,
              fieldName: "ID Producto",
              myIcon: Icons.account_balance,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0), // Use to add space between Textfields
            MyTextField(
              myController: _productDesController,
              fieldName: "Descripción",
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _costoController,
              fieldName: "Costo",
              prefixIconColor: Colors.deepPurple.shade300,
              keyboardType: TextInputType.number, // Suggest numeric input
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _instruccionesController,
              fieldName: "Instrucciones",
              prefixIconColor: Colors.deepPurple.shade300,
              maxLines: 3, // Allow multiple lines for instructions
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _ingredientesController,
              fieldName: "Ingredientes",
              prefixIconColor: Colors.deepPurple.shade300,
              maxLines: 3, // Allow multiple lines for ingredients
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _caducidadController,
              fieldName: "Caducidad",
              prefixIconColor: Colors.deepPurple.shade300,
              myIcon: Icons.date_range, // Add a date icon
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _proveedorController,
              fieldName: "Proveedor",
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  // Function that returns OutlinedButton Widget and passes data to Details Screen
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productId: _productIdController.text,
              productDescription: _productDesController.text,
              costo: _costoController.text,
              nombre: _nombreController.text,
              instrucciones: _instruccionesController.text,
              ingredientes: _ingredientesController.text,
              caducidad: _caducidadController.text,
              proveedor: _proveedorController.text,
            );
          }),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );
  }
}

// Custom Stateless Widget Class that helps re-usability
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
    this.keyboardType = TextInputType.text, // Default keyboard type
    this.maxLines = 1, // Default to single line
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;
  final TextInputType keyboardType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}