import 'package:flutter/material.dart';
import 'package:myapp/formulario/form_DetailsEmpleado.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // Declare separate controllers for each text field
  final _idEmpleadoController = TextEditingController();
  final _nombreController = TextEditingController();
  final _puestoController = TextEditingController();
  final _numeroController = TextEditingController();
  final _direccionController = TextEditingController();
  final _emailController = TextEditingController();
  final _sueldoController = TextEditingController();
  final _fechaIngresoController = TextEditingController();

  @override
  void dispose() {
    // Dispose all controllers to free up resources
    _idEmpleadoController.dispose();
    _nombreController.dispose();
    _puestoController.dispose();
    _numeroController.dispose();
    _direccionController.dispose();
    _emailController.dispose();
    _sueldoController.dispose();
    _fechaIngresoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text(" Empleados"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idEmpleadoController,
              fieldName: "ID Empleado",
              myIcon: Icons.perm_identity,
              prefixIconColor: Colors.deepPurple.shade300,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10.0), // Use to add space between Textfields
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.person,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _puestoController,
              fieldName: "Puesto",
              myIcon: Icons.work,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _numeroController,
              fieldName: "Número de Teléfono",
              myIcon: Icons.phone,
              prefixIconColor: Colors.deepPurple.shade300,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _direccionController,
              fieldName: "Dirección",
              myIcon: Icons.home,
              prefixIconColor: Colors.deepPurple.shade300,
              maxLines: 2,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _emailController,
              fieldName: "Email",
              myIcon: Icons.email,
              prefixIconColor: Colors.deepPurple.shade300,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _sueldoController,
              fieldName: "Sueldo",
              myIcon: Icons.attach_money,
              prefixIconColor: Colors.deepPurple.shade300,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _fechaIngresoController,
              fieldName: "Fecha de Ingreso (YYYY-MM-DD)",
              myIcon: Icons.calendar_today,
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
            return DetailsEmpleado(
              id_empleado: _idEmpleadoController.text,
              nombre: _nombreController.text,
              puesto: _puestoController.text,
              numero: _numeroController.text,
              direccion: _direccionController.text,
              email: _emailController.text,
              sueldo: _sueldoController.text,
              fecha_ingreso: _fechaIngresoController.text,
            );
          }),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
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