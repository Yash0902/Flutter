// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class textformfield extends StatelessWidget {
//   const textformfield({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//
//     // final _controller = TextEditingController(text: "John");
//     final _nameController = TextEditingController();
//     final _focusNode = FocusNode();
//
//     return Scaffold(
//       appBar: AppBar(title: Text("TextFormField:-")),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         color: Colors.blue.shade100,
//         padding: EdgeInsets.all(20),
//
//         child: Form(
//           key: _formKey,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Name is required";
//                   }
//                   return null;
//                 },
//                 textCapitalization: TextCapitalization.words,
//                 textAlignVertical: TextAlignVertical.bottom,
//                 controller: _nameController,
//                 autofocus: true,
//                 onChanged: (val) {},
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.person),
//                   iconColor: Colors.red,
//                   helperText: "Enter your name",
//                   helperStyle: TextStyle(
//                     color: Colors.red.shade200,
//                     fontSize: 20,
//                   ),
//                   focusColor: Colors.green,
//                   labelText: "Name",
//                   labelStyle: TextStyle(fontSize: 20),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red, width: 2),
//                     borderRadius: BorderRadius.all(Radius.circular(100)),
//                   ),
//
//                   // focusedBorder: OutlineInputBorder(
//                   //   borderSide: BorderSide(color: Colors.green, width: 1.5),
//                   // ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   icon: Icon(Icons.email),
//                   helperText: "Enter valid  Email",
//
//                   helperStyle: TextStyle(
//                     color: Colors.red.shade200,
//                     fontSize: 20,
//                   ),
//                   floatingLabelStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                   hintText: "Enter the email",
//                   labelText: "Email",
//                   labelStyle: TextStyle(fontSize: 20),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Name is required";
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.emailAddress,
//                 // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.phone),
//                   prefixText: "+91 ",
//                   helperText: "Enter valid  Number",
//                   helperStyle: TextStyle(
//                     color: Colors.red.shade200,
//                     fontSize: 20,
//                   ),
//                   floatingLabelStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                   labelText: "Phone",
//                   labelStyle: TextStyle(fontSize: 20),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Enter a valid password";
//                   }
//                 },
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.all(20),
//                   icon: Icon(Icons.password),
//                   floatingLabelStyle: TextStyle(color: Colors.black),
//                   helperText: "Enter valid Password",
//                   helperStyle: TextStyle(
//                     color: Colors.red.shade200,
//                     fontSize: 20,
//                   ),
//                   labelText: "Password",
//                   labelStyle: TextStyle(fontSize: 20),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.phone),
//                   labelText: "phone",
//                 ),
//                 onChanged: (v) {
//                   print(v);
//                 },
//               ),
//               SizedBox(height: 20,),
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: ElevatedButton(onPressed: () {
//
//                   _formKey.currentState!.reset();
//
//                 }, child: Text("Submit")),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
    textformfield({super.key});

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value.length != value.replaceAll(' ', '').length) {
      return 'Username must not contain any spaces';
    }
    if (int.tryParse(value[0]) != null) {
      return 'Username must not start with a number';
    }
    if (value.length <= 2) {
      return 'Username should be at least 3 characters long';
    }
    return null;
  }
  final _formKey = GlobalKey<FormState>();
  String? username;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("TextFormField")),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Form(
          autovalidateMode:AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                enableInteractiveSelection: true,
                onTap:(){
                    print("helllo");
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  } else if (!value.contains('@')) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                showCursor: true,

                autocorrect: true,
                smartDashesType: SmartDashesType.enabled,

                style: TextStyle(
                   fontSize: 25,
                ),
                autofocus: true,
                onSaved: (val){
                    username = val;
                },

                decoration: InputDecoration(

                  errorStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                  ),
                  errorText:null,

                  errorBorder:OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.red,width:2),

                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),


                  prefixIcon: Icon(Icons.person),

                  
                  // icon: Icon(Icons.person),
                  

                  border:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,width:2),
                      borderRadius: BorderRadius.circular(20),
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  
                  icon: IconButton(onPressed:(){
                       print("add");
                  }, icon:Icon(Icons.add),iconSize: 30,),

                  labelText: "name",

                  floatingLabelStyle:TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                  ),

                  labelStyle: TextStyle(fontSize: 20),

                ),

              ),
              const  SizedBox(height: 25,),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("Saved username: $username");
                    _formKey.currentState!.reset();
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
