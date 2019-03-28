@execute
Feature: Registration Functionality Check
Scenario: User is trying to register in CapBook
Given user is accessing CapBook Registration Page 
When user is trying to submit request after entering valid set of information
Then Your Registration has successfully done 


Scenario: User is trying to register using invalid set of details
Given user is accessing Registration Page
When user is trying to submit data without 'emailId'
Then 'Please fill out this field.'

When user is trying to submit data without entering 'Password'
Then 'Please match the requested format.Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters'

When user is trying to submit data without entering 'firstName'
Then 'Please fill out this field.'

When user is trying to submit data without entering 'lastName'
Then 'Please fill out this field.'

When user is trying to submit data without entering 'dateOfBirth'
Then 'Please fill out this field.'

When user is trying to submit data without entering 'Gender'
Then 'Please fill out this field.'

When user is trying to submit data without entering 'Country'
Then 'Please fill out this field.'

When user is trying to submit data without entering 'Security Question'
Then 'Please fill out this field.'

When user is trying to submit data without entering 'Security Answer'
Then 'Please fill out this field.'