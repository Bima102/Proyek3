import 'package:flutter/material.dart';

class SuratOnline extends StatefulWidget {
  @override
  _SuratOnlineState createState() => _SuratOnlineState();
}

class _SuratOnlineState extends State<SuratOnline> {
  final _formKey = GlobalKey<FormState>();
  final _pengirimController = TextEditingController();
  final _penerimaController = TextEditingController();
  final _isiSuratController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surat Online'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _pengirimController,
                decoration: InputDecoration(
                  labelText: 'Pengirim',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama pengirim tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _penerimaController,
                decoration: InputDecoration(
                  labelText: 'Penerima',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama penerima tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: TextFormField(
                  controller: _isiSuratController,
                  decoration: InputDecoration(
                    labelText: 'Isi Surat',
                  ),
                  maxLines: 10,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Kirim surat
                    print('Surat dikirim:');
                    print('Pengirim: ${_pengirimController.text}');
                    print('Penerima: ${_penerimaController.text}');
                    print('Isi Surat: ${_isiSuratController.text}');

                    // Bersihkan input
                    _pengirimController.clear();
                    _penerimaController.clear();
                    _isiSuratController.clear();
                  }
                },
                child: Text('Kirim Surat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}