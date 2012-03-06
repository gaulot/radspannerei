
Feature: New Customer Workflow
  In order to have customers
  As a user
  I want to create a new customers

  Background:
    Given I am on the new customer page
    Given a customer named "Heinz Strunk" with email "strunk@gmail.com"


  Scenario: Find an eisting customer (not though form search)
    Then we can find a customer named "Heinz Strunk"

  Scenario: Create new customer successfully
    When I fill in "Name" with "Reese"
      And fill in "Vorname" with "Kyle"
      And I fill in "Strasse" with "Admiralsstarsse 12"
      And I fill in "Stadt" with "10999 Berlin"
      And I fill in "email" with "reese@gmail.com"
      And I fill in "Telefon" with "0178 12345678"
      And I press "Speichern"
    Then I should see "Kunde wurde erfolgreich angelegt"
    # And ....

  Scenario: Try to create new customer with unsufficient data
    When fill in "Vorname" with "Kyle"
      And I fill in "Strasse" with "Admiralsstarsse 12"
      And I fill in "Stadt" with "10999 Berlin"
      And I fill in "email" with "reese@gmail.com"
      And I fill in "Telefon" with "0178 12345678"
      And I press "Speichern"
    Then I should see "Kunde konnte nicht angelegt werden, da der Nachname fehlt!"
 
  Scenario: Try to create cusotmer, that already excists
    When I fill in 
      And I fill in "Name" with "Strunk"
      And I fill in "Vorname" with "Strunk"
      And I fill in "Strasse" with "Admiralsstarsse 12"
      And I fill in "Stadt" with "10999 Berlin"
      And I fill in "email" with "strunk@gmail.com"
      And I fill in "Telefon" with "0178 12345678"
      And I press "Speichern"
    Then I should see "Dieser Kunde existiert bereits. Siehe Unten."
