# README

![Build Status](https://codeship.com/projects/3beebc80-582f-0135-4f6d-1618efb0f01a/status?branch=master)
![Code Climate](https://codeclimate.com/github/jamiecajka/breakable-toy.png)
![Coverage Status](https://coveralls.io/repos/jamiecajka/breakable-toy/badge.png)

# Barn Manager
 This is my breakable toy project for Launch Academy. This app allows a barn owner or trainer to set up a horse and list the horse's farrier, veterinarian, upcoming events, charges, and notes so that the owner can login and see all the information on their horse. This will allow a horse owner to have all their horse's information in one easy to access location

## Technologies
  This app is currently build using Ruby on Rails, with PostreSql and ActiveRecord handling the database.
  Devise is used for user authentication, and Foundation and CSS were used for styling.
  RSpec is used for controller, feature, and model testing

## Setup
  To get setup, run:
  ```
  bundle
  rake db:create
  rake db:migrate
  rake db:seed
  rails s
  ```
  Navigate to ```localhost:3000```
  To have access to the user content, use email: jamiecajka@gmail.com password: password for a horse owner account or email: hipfrog@ribbit.com password: password for an admin/barn owner account
  To run tests, run ```rake```
