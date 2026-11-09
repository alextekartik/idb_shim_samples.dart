@TestOn('browser')
library;

import 'package:test/test.dart';

import '../web/todo.dart';

void main() {
  test('idbFactoryFromName', () {
    // The factories of the links of index.html.
    for (var name in ['browser', 'persistent', 'native', 'memory']) {
      expect(idbFactoryFromName(name), isNotNull, reason: name);
    }
    expect(idbFactoryFromName(null), isNotNull);
    // Not supported: null (getIdbFactory throws, it broke the page).
    expect(idbFactoryFromName('websql'), isNull);
  });
}
