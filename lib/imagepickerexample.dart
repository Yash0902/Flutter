// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_cropper/image_cropper.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     home: ImagePickerExample(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class ImagePickerExample extends StatefulWidget {
//   const ImagePickerExample({super.key});
//
//   @override
//   State<ImagePickerExample> createState() => _ImagePickerExampleState();
// }
//
// class _ImagePickerExampleState extends State<ImagePickerExample> {
//   File? _imageFile; // store final cropped image
//   final ImagePicker _picker = ImagePicker();
//
//   // Function to pick image from camera or gallery
//   Future<void> _pickImage(ImageSource source) async {
//     final picked = await _picker.pickImage(source: source);
//     if (picked != null) {
//       // After picking, call crop function
//       _cropImage(picked.path);
//     }
//   }
//
//   // Function to crop image
//   Future<void> _cropImage(String imagePath) async {
//     final cropped = await ImageCropper().cropImage(
//       sourcePath: imagePath,
//       aspectRatioPresets: [
//         CropAspectRatioPreset.square, // 1:1
//         CropAspectRatioPreset.ratio3x2, // 3:2
//         CropAspectRatioPreset.original, // original ratio
//         CropAspectRatioPreset.ratio4x3, // 4:3
//         CropAspectRatioPreset.ratio16x9, // 16:9
//       ],
//       uiSettings: [
//         AndroidUiSettings(
//           toolbarTitle: 'Crop Image',
//           toolbarColor: Colors.blue,
//           toolbarWidgetColor: Colors.white,
//           initAspectRatio: CropAspectRatioPreset.original,
//           lockAspectRatio: false,
//         ),
//         IOSUiSettings(
//           title: 'Crop Image',
//         ),
//       ],
//     );
//
//     if (cropped != null) {
//       setState(() {
//         _imageFile = File(cropped.path);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Image Picker & Crop Example')),
//       body: Center(
//         child: _imageFile == null
//             ? const Text("No image selected")
//             : Image.file(_imageFile!),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton.extended(
//             heroTag: "camera",
//             onPressed: () => _pickImage(ImageSource.camera),
//             label: const Text("Camera"),
//             icon: const Icon(Icons.camera_alt),
//           ),
//           const SizedBox(height: 10),
//           FloatingActionButton.extended(
//             heroTag: "gallery",
//             onPressed: () => _pickImage(ImageSource.gallery),
//             label: const Text("Gallery"),
//             icon: const Icon(Icons.photo),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();


  Future<void> _pickImage(ImageSource source) async {
    final picked = await _picker.pickImage(source: source);
    if (picked != null) {
      setState(() {
        _imageFile = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker Example')),
      body: Center(
        child: _imageFile == null
            ? const Text("No image selected")
            : Image.file(_imageFile!),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: "camera",
            onPressed: () => _pickImage(ImageSource.camera),
            label: const Text("Camera"),
            icon: const Icon(Icons.camera_alt),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            heroTag: "gallery",
            onPressed: () => _pickImage(ImageSource.gallery),
            label: const Text("Gallery"),
            icon: const Icon(Icons.photo),
          ),
        ],
      ),
    );
  }
}
