
import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

   final  GlobalKey<FormState> myFormKey = GlobalKey<FormState>();


   final Map<String , String> formValues = {
         'first_name' : 'Celeste',
         'last_name'  : 'Zavala',
         'Email'      : 'zavalaceleste98@gmail.com',
         'password'   : '12345',
         'role'       : 'developer'
  };

    return  Scaffold(
      appBar: AppBar(
        title:const  Text('Inputs y Forms'),
      ),
      
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            child:  Form(
            key: myFormKey,
              child: Column(
                children: [
                    
                    CustomInputField(labelText: 'Nombre', hintText: 'Nombre de usuario',helperText: 'Solo tres letras', suffixIcon: null, icon: null, formValues: formValues, formProperty: 'first_name',),
                    const SizedBox(height :30),
                      CustomInputField(labelText: 'Apellido', hintText: 'Apellido',helperText: 'Mas de tres letras', suffixIcon: null, icon: null,  formValues: formValues, formProperty: 'last_name',),
                    const  SizedBox(height :30),
                    CustomInputField(labelText: 'Email', hintText: 'Email',helperText: '', suffixIcon: null, icon: null, keyboardType: TextInputType.emailAddress, formValues: formValues, formProperty: 'Email',),
                    const SizedBox(height :30),
                     CustomInputField(labelText: 'Password', hintText: 'Password',helperText: '', suffixIcon: null, icon: null,  formValues: formValues, formProperty: 'password', ),
                    const  SizedBox(height :30),

                    DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem( value: 'Admin' , child : Text('Admin')),
                        DropdownMenuItem( value: 'Superuser' , child : Text('Admin')),
                        DropdownMenuItem( value: 'Developer' , child : Text('Developer')),
                        DropdownMenuItem( value: 'Jr. Developer' , child : Text('jr. Developer')),
                      ], 
                      onChanged: (value){
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      }),
                     
                     
                     ElevatedButton(
                       child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))
                       ),
                      onPressed: (){

                        //FocusScope.of(context);
                        if( !myFormKey.currentState!.validate()){
                          print('Formulario no valido');  
                          return;
                        }
                       
                       print(formValues);
                      },
                     
                     )
                ],
              ),
            ),
            
            ),
      )
      );
  }
}

