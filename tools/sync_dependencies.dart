import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

void main() {
  final centralizedFile = File('tools/centralized_dependencies.yaml');
  final centralizedYaml = loadYaml(centralizedFile.readAsStringSync()) as Map;

  final centralizedDependencies =
      Map<String, dynamic>.from(centralizedYaml['general_dependencies'] ?? {});
  final centralizedDevDependencies =
      Map<String, dynamic>.from(centralizedYaml['general_dev_dependencies'] ?? {});

  final packagesDir = Directory('packages');
  final packageDirs = packagesDir
      .listSync()
      .whereType<Directory>()
      .where((dir) => File('${dir.path}/pubspec.yaml').existsSync());

  for (final dir in packageDirs) {
    final pubspecFile = File('${dir.path}/pubspec.yaml');
    final originalContent = pubspecFile.readAsStringSync();
    final editor = YamlEditor(originalContent);
    final yaml = loadYaml(originalContent) as Map;

    bool updated = false;

    void updateSection(
        String sectionName, Map<String, dynamic> centralizedMap) {
      final section = Map<String, dynamic>.from(yaml[sectionName] ?? {});
      for (final entry in centralizedMap.entries) {
        if (section.containsKey(entry.key) &&
            section[entry.key] != entry.value) {
          section[entry.key] = entry.value;
          updated = true;
        }
      }
      editor.update([sectionName], section);
    }

    updateSection('dependencies', centralizedDependencies);
    updateSection('dev_dependencies', centralizedDevDependencies);

    if (updated) {
      pubspecFile.writeAsStringSync(editor.toString());
      print('✅ Updated: ${dir.path}/pubspec.yaml');
    } else {
      print('✔️ No changes needed: ${dir.path}/pubspec.yaml');
    }
  }

  print('🎯 Done syncing dependencies.');
}
