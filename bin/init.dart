#! /usr/bin/env dcli

import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui/lib/geniui.config.dart' as configFile;

void main(List<String> args) {
  Utils.writeFile(configFile.file, configFile.stub);

  print(green("Config file generated successfully!"));
}
