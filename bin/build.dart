#! /usr/bin/env dcli

import "dart:io";

import "package:geniux/src/BuildersGenerator.dart" as buildersGenerator;
import "package:geniux/src/WidgetsGenerator.dart" as widgetsGenerator;
import "package:geniux/src/ExtensionsGenerator.dart"
    as extensionGenerator;
import "package:geniux/src/MixinsGenerator.dart" as mixinsGenerator;
import "package:geniux/src/GeniuiGenerator.dart" as geniuiGenerator;
import "package:geniux/src/UtilityGenerator.dart" as utilityGenerator;
import 'package:geniux/src/utilities/Utils.dart';

void main(List<String> args) async {
  Utils.createConfig();
  await utilityGenerator.generate(args);
  await geniuiGenerator.generate(args);
  await mixinsGenerator.generate(args);
  await buildersGenerator.generate(args);
  await widgetsGenerator.generate(args);
  await extensionGenerator.generate(args);
  formatGeneratedCode();
}

void formatGeneratedCode() async {
  print('Formatting Code....');
  try {
    final result = await Process.run('dart', ['format', 'geniui']);
    if (result.exitCode == 0) {
      print(result.stdout);
    } else {
      print(
          'Command failed with error code ${result.exitCode}: ${result.stderr}');
    }
  } catch (e) {
    print('Error running command: $e');
  }
}
