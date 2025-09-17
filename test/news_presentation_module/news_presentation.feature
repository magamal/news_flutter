Feature: Display news on UI

  Background:
    Given Setup Data

  Scenario Outline: Display list of news when fetch is successful
    Given the news API returns an article with title "<title>" and content "<content>"
    And the app is running
    Then I see the article title "<title>" and content "<content>" on screen
    Examples:
      | title              | content     |
      | 'Article Title 1'  | 'content 1' |
      | 'Article Title 2 ' | 'content 2' |
      | 'Article Title 3'  | 'content 3' |

  Scenario: Display loading indicator while fetching news
    Given the news fetch is in progress
    And the app is running
    Then the UI should show a loading indicator

  Scenario: Display error message when fetch fails
    Given the remote module throws a DioException
    And the app is running
    Then the UI should show an error message