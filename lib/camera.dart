import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  final ImagePicker _picker = ImagePicker();
  List<String> _imagePaths = [];

  @override
  void initState() {
    super.initState();
    _loadSavedImages();
  }

  Future<void> _loadSavedImages() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final List<FileSystemEntity> files = directory.listSync();
      setState(() {
        _imagePaths = files.where((file) => file.path.endsWith('.png')).map((file) => file.path).toList();
      });
    } catch (e) {
      print('Error loading images: $e');
    }
  }

  Future<void> _takePicture() async {
    try {
      final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
      if (photo != null) {
        final directory = await getApplicationDocumentsDirectory();
        final imagePath = '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.png';
        final File newImage = await File(photo.path).copy(imagePath);

        setState(() {
          _imagePaths.add(newImage.path);
        });

      
      }
    } catch (e) {
      print('Error taking picture: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
        backgroundColor: Colors.yellow[400],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: _imagePaths.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Handle image tap (if needed)
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.file(
                      File(_imagePaths[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: _takePicture,
            child: const Icon(Icons.camera_alt),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
