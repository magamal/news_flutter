import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';


/// Usage: user could see news
Future<void> userCouldSeeNews(
    WidgetTester tester, bdd.DataTable dataTable) async {
  await tester.pumpAndSettle(const Duration(seconds: 2));
  await iSeeText(tester,"Article Title 1");
}
