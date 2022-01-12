import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

      final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
      final Map<String, String> formValues = {
        'first_name' : 'Fernando',
        'last_name' : 'herrera',
        'email' : 'email.email@gmail.com',
        'password' : '123455',
        'role' : 'Admin'

      };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Name', hintText: 'Name', helperText: 'Name of user', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30),
                 CustomInputField(labelText: 'LastName', hintText: 'LastName', helperText: 'LastName of user', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30),
                 CustomInputField(labelText: 'Email', hintText: 'Email of user', helperText: 'Email of user', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30),
                 CustomInputField(labelText: 'Password', hintText: 'Password of user', helperText: 'Password of user', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if( !myFormKey.currentState!.validate()){
                      print('Not a validate form');
                      return;
                    }
                      //* imprimir valores de usuario
                      print(formValues);
                  }, 
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Guardar')))
                )
                
              ],
            ),
          ),
          ),
      )
    );
  }
}

