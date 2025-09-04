import 'dart:io';

void main() {
  final generatedDir = Directory('apps/bob_be/bob_be_server/lib/src/generated');
  final exports = <String>[];

  // Scan for .dart files (excluding protocol.dart to avoid circular imports)
  if (generatedDir.existsSync()) {
    generatedDir
        .listSync(recursive: true)
        .whereType<File>()
        .where((f) =>
            f.path.endsWith('.dart') && !f.path.endsWith('protocol.dart'))
        .forEach((file) {
      final relativePath = file.path.replaceFirst(RegExp(r'.*lib/'), '');
      exports.add("export 'package:bob_be_server/$relativePath';");
    });
  }

  final content =
      '''//GENERATED - DO NOT MODIFY BY HAND - exports of generated models from the serverpod client 
library bob_models;

${exports.join('\n')}
''';

  final outputDir = Directory('packages/models/lib');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  File('packages/models/lib/bob_models.dart').writeAsStringSync(content);
  print('Generated ${exports.length} exports in bob_models.dart');
}
