# README

This README document steps are necessary to get the application up and running.

## Precondition 
* Ruby version 2.5.1 installed
* Options for SMTP is provided for gmail only

## Configuration
To get started with the app, clone the repo and then install the needed gems:
````
bundle install
````

## Project execution
Navigate to project directory and execute the following command from a terminal 
````
bundle exec ruby send_mail.rb
````
You will be asked following questions to enter information before sending an email
````
Please enter your email

Please enter the password from your email

Please enter an email receiver

Please enter the subject

Please enter your message
````
The successful message will be print in a console confirming message is sent.
````
Congratulations! Your message was just sent.
````

The original documentation gem Pony [https://github.com/benprew/pony]
