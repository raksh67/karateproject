Feature: demo command line with junit5

  Scenario: Demo cmd
    Given print 'I am inside sample feature'

  @second
  Scenario: Second test
    Given print 'I am inside 2nd test'
