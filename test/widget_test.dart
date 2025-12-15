import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:add_music/main.dart';
import 'package:add_music/audio/audio_controller.dart';

void main() {
  testWidgets('App loads without crashing', (WidgetTester tester) async {
    // Buat AudioController palsu (tidak initialize audio asli)
    final audioController = AudioController();

    // Jalankan aplikasi
    await tester.pumpWidget(
      MyApp(audioController: audioController),
    );

    // Pastikan MaterialApp muncul
    expect(find.byType(MaterialApp), findsOneWidget);

    // Pastikan judul AppBar muncul
    expect(find.text('Flutter SoLoud Demo'), findsOneWidget);

    // Pastikan tombol-tombol ada
    expect(find.text('Play Sound'), findsOneWidget);
    expect(find.text('Start Music'), findsOneWidget);
    expect(find.text('Fade Out Music'), findsOneWidget);
    expect(find.text('Apply Filter'), findsOneWidget);
  });
}
