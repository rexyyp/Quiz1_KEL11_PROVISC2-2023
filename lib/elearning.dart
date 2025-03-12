import 'package:flutter/material.dart';

class ElearningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Elearning",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(color: Colors.teal, height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingRowColor: MaterialStateColor.resolveWith(
                  (states) => Colors.grey.shade300,
                ),
                columns: [
                  DataColumn(label: Text("Kode Mata Kuliah")),
                  DataColumn(label: Text("Nama Mata Kuliah")),
                  DataColumn(label: Text("SKS")),
                  DataColumn(label: Text("Dosen")),
                  DataColumn(label: Text("Tahun Akademik")),
                ],
                rows: [
                  _buildRow(
                    "K237",
                    "Pemrograman Visual Dan Piranti Bergerak",
                    "3",
                    "Dr. Yudi Wibisono, S.T., M.T.",
                    "2024/2025 - Genap",
                  ),
                  _buildRow(
                    "K237",
                    "Analisis Dan Desain Algoritma",
                    "3",
                    "Yaya Wihardi, S.Kom, M.Kom.",
                    "2024/2025 - Genap",
                  ),
                  _buildRow(
                    "K250",
                    "Sistem Operasi",
                    "3",
                    "Herbert, S.Kom, M.T.",
                    "2024/2025 - Genap",
                  ),
                  _buildRow(
                    "K290",
                    "Desain Dan Pemrograman Berbasis Objek",
                    "3",
                    "Rosa Asihri Sukainto, M.T.",
                    "2024/2025 - Genap",
                  ),
                  _buildRow(
                    "K400",
                    "Metodologi Penelitian",
                    "3",
                    "Rizky Rachman Juhdie Putra, M.Kom",
                    "2024/2025 - Genap",
                  ),
                  _buildRow(
                    "K545",
                    "Big Data Platform",
                    "3",
                    "Prof. Dr. Lala Septem Riza, M.T.",
                    "2024/2025 - Genap",
                  ),
                  _buildRow(
                    "K502",
                    "Proyek Konsultansi",
                    "4",
                    "Eddy Prasetyo Nugroho, M.T.",
                    "2024/2025 - Genap",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildRow(
    String kode,
    String nama,
    String sks,
    String dosen,
    String tahun,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(kode)),
        DataCell(Text(nama)),
        DataCell(Text(sks)),
        DataCell(Text(dosen)),
        DataCell(Text(tahun)),
      ],
    );
  }
}
