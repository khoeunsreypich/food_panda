import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_panda/data/response/status.dart';
import 'package:food_panda/res/app_url.dart';
import 'package:food_panda/viewmodels/image_viewmodel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddRestuarant extends StatefulWidget {
  const AddRestuarant({super.key});

  @override
  State<AddRestuarant> createState() => _AddRestuarantState();
}

class _AddRestuarantState extends State<AddRestuarant> {
  bool isPicked = false;
  var imageFile;
  final _imageViewMdel = ImageViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: ChangeNotifierProvider(
            create: (context) => _imageViewMdel,
            child: Consumer<ImageViewModel>(
                builder: (context, viewModel,_) {
              if (viewModel.response.status == null) {
                return  InkWell(
                  onTap: () {
                    _getImageFromSource('camera');
                  },
                  child: SizedBox(
                    height: 150,
                    width: 200,
                    child: isPicked
                        ? Image.file(imageFile)
                        : Image.network(
                      'https://i.pinimg.com/564x/ad/73/1c/ad731cd0da0641bb16090f25778ef0fd.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              }
              switch (viewModel.response.status!) {
                case Status.LOADING:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case Status.COMPLETED:
                  return InkWell(
                    onTap: () {
                      _getImageFromSource('camera');
                    },
                    child: SizedBox(
                      height: 150,
                      width: 200,
                      child: isPicked
                          ? Image.file(imageFile)
                          : Image.network(
                        '${AppUrl.baseUrl}${viewModel.response.data?[0].url!}'
                      ),
                    ),
                  );
                case Status.ERROR:
                  return Text(viewModel.response.message!);
                // case Status.DEFAULT:
                //   return Image.network(
                //       'https://i.pinimg.com/564x/ad/73/1c/ad731cd0da0641bb16090f25778ef0fd.jpg');
                //
              }
            },
            ),
          ),
        ),
      ),
    );
  }

  _getImageFromSource(source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
        source: source == "gallery" ? ImageSource.gallery : ImageSource.camera);
    if (pickedFile != null) {
      _imageViewMdel.uploadImage(pickedFile.path);
      setState(() {
        isPicked = true;
        imageFile = File(pickedFile.path);
      });
      // print('Picked Image: ${File(pickedFile.path)}');
    }
  }
}
