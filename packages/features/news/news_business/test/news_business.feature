Feature: fetch news articles successfully

  Scenario: Successfully fetch news
    Given the news API returns a successful response
    When I request the list of news
    Then the list of news is returned

  Scenario: Failed to fetch news
    Given the news API returns an error
    When I request the list of news
    Then a DioException should be thrown
