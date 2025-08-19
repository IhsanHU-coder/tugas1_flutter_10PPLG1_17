import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/controllers/football_controller.dart';
import 'package:project_dart_1/models/football_model.dart';

class FootballEditPages extends StatefulWidget {
  // final int? index; // null kalau tambah baru

  // const FootballEditPages({super.key, this.index});
  const FootballEditPages({super.key});

  @override
  State<FootballEditPages> createState() => _FootballEditPagesState();
}

class _FootballEditPagesState extends State<FootballEditPages> {
  final footballController = Get.find<FootballController>();

  late TextEditingController imageController;
  late TextEditingController nameController;
  late TextEditingController numberController;
  
  int? index;

  @override
  void initState() {
    super.initState();

    index = Get.arguments;

    if (index != null) {
      // Mode edit → ambil data pemain
      final player = footballController.players[index!];
      imageController = TextEditingController(text: player.image);
      nameController = TextEditingController(text: player.namaOrang);
      numberController = TextEditingController(text: player.nomor);
    } else {
      // Mode tambah baru
      imageController = TextEditingController();
      nameController = TextEditingController();
      numberController = TextEditingController();
    }
  }

  @override
  void dispose() {
    imageController.dispose();
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = index != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Player" : "Add Player"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: imageController,
              decoration: InputDecoration(labelText: "Image URL"),
            ),
            SizedBox(height: 12),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Player Name"),
            ),
            SizedBox(height: 12),
            TextField(
              controller: numberController,
              decoration: InputDecoration(labelText: "Number"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (isEdit) {
                  // update data pemain
                  footballController.players[index!] = FootballPlayer(
                    image: imageController.text,
                    namaOrang: nameController.text,
                    nomor: numberController.text,
                  );
                } else {
                  // tambah data pemain
                  footballController.players.add(FootballPlayer(
                    image: imageController.text,
                    namaOrang: nameController.text,
                    nomor: numberController.text,
                  ));
                }

                Get.back(); // kembali ke halaman sebelumnya
              },
              child: Text(isEdit ? "Update Player" : "Add Player"),
            ),
          ],
        ),
      ),
    );
  }
}
