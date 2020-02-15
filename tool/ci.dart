import 'package:process_run/shell.dart';

Future main() async {
  var shell = Shell();

  await shell.run('pub global activate webdev');
  for (var dir in [
    'tutorial_todo',
  ]) {
    shell = shell.pushd(dir);
    await shell.run('''
    
    pub get
    dart tool/ci.dart
    
''');
    shell = shell.popd();
  }
}
