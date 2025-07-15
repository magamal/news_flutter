// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/i_see_the_article_title_and_content_on_screen.dart';
import './step/setup_data.dart';
import './step/the_app_is_running.dart';
import './step/the_news_api_returns_an_article_with_title_and_content.dart';
import './step/the_news_fetch_is_in_progress.dart';
import './step/the_remote_module_throws_a_dioexception.dart';
import './step/the_ui_should_show_a_loading_indicator.dart';
import './step/the_ui_should_show_an_error_message.dart';

void main() {
  group('''Display news on UI''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await setupData(tester);
    }

    testWidgets(
        '''Outline: Display list of news when fetch is successful ('Article Title 1', 'content 1')''',
        (tester) async {
      await bddSetUp(tester);
      await theNewsApiReturnsAnArticleWithTitleAndContent(
          tester, 'Article Title 1', 'content 1');
      await theAppIsRunning(tester);
      await iSeeTheArticleTitleAndContentOnScreen(
          tester, 'Article Title 1', 'content 1');
    });
    testWidgets(
        '''Outline: Display list of news when fetch is successful ('Article Title 2 ', 'content 2')''',
        (tester) async {
      await bddSetUp(tester);
      await theNewsApiReturnsAnArticleWithTitleAndContent(
          tester, 'Article Title 2 ', 'content 2');
      await theAppIsRunning(tester);
      await iSeeTheArticleTitleAndContentOnScreen(
          tester, 'Article Title 2 ', 'content 2');
    });
    testWidgets(
        '''Outline: Display list of news when fetch is successful ('Article Title 3', 'content 3')''',
        (tester) async {
      await bddSetUp(tester);
      await theNewsApiReturnsAnArticleWithTitleAndContent(
          tester, 'Article Title 3', 'content 3');
      await theAppIsRunning(tester);
      await iSeeTheArticleTitleAndContentOnScreen(
          tester, 'Article Title 3', 'content 3');
    });
    testWidgets('''Display loading indicator while fetching news''',
        (tester) async {
      await bddSetUp(tester);
      await theNewsFetchIsInProgress(tester);
      await theAppIsRunning(tester);
      await theUiShouldShowALoadingIndicator(tester);
    });
    testWidgets('''Display error message when fetch fails''', (tester) async {
      await bddSetUp(tester);
      await theRemoteModuleThrowsADioexception(tester);
      await theAppIsRunning(tester);
      await theUiShouldShowAnErrorMessage(tester);
    });
  });
}
