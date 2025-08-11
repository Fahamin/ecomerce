import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/model/category_model.dart';
import '../controllers/subcategori_controller.dart';

class SubcategoriView extends GetView<SubcategoriController> {
  SubcategoriView( {super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SubcategoriView'), centerTitle: true),
      body: const Center(
        child: Text(
          'SubcategoriView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
