Feature: News List Scenarios

  Scenario: get news success scenario
    Given Setup Data
    Given the app is running
    And the mobile application is connected to the internet
    Then user could see news
      | 'title'           | 'author'   | 'publishedAt' | 'url'                          | 'urlToImage'                          | 'description'               | 'content'                   | 'summary'                         |
      | 'Article Title 1' | 'Author 1' | '2025-06-01'  | 'https://example.com/article1' | 'https://example.com/images/img1.jpg' | 'Description for article 1' | 'Full content of article 1' | 'This is a summary of article 1.' |
      | 'Article Title 2' | 'Author 2' | '2025-06-02'  | 'https://example.com/article2' | 'https://example.com/images/img2.jpg' | 'Description for article 2' | 'Full content of article 2' | 'This is a summary of article 2.' |
      | 'Article Title 3' | 'Author 3' | '2025-06-03'  | 'https://example.com/article3' | 'https://example.com/images/img3.jpg' | 'Description for article 3' | 'Full content of article 3' | 'This is a summary of article 3.' |
      | 'Article Title 4' | 'Author 4' | '2025-06-04'  | 'https://example.com/article4' | 'https://example.com/images/img4.jpg' | 'Description for article 4' | 'Full content of article 4' | 'This is a summary of article 4.' |
      | 'Article Title 5' | 'Author 5' | '2025-06-05'  | 'https://example.com/article5' | 'https://example.com/images/img5.jpg' | 'Description for article 5' | 'Full content of article 5' | 'This is a summary of article 5.' |
