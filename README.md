# Active Record Practice

## Appointments App

- Appointments
  - attributes: date, time
  - belongs to doctor
  - belongs to patient
- Doctors
  - attributes: name, specialty, degree
  - has many appointments
  - has many patients through appointments
- Patients
  - attributes: name, age
  - has many appointments
  - has many doctors through appointments

Deliverables:

- finish setting up migration files as you see fit

methods to create:

- Patient

  - #doctors_names -> returns a unique list of just the names of all doctors they have appointments with
  - .order_by_age -> returns a list of all patients in order of age(oldest to youngest)
  - bonus: #upcoming_appointments -> returns any appointments scheduled for the future

- Doctor

  - #patients_names -> returns a unique list of the names of all patients they have appointments with
  - .speciality -> accepts an argument of a speciality(string) and returns all doctors that match that speciality
  - bonus: #previous_appointments -> returns all past appointments for doctor

- Appointments
  - bonus: .todays_appointments -> returns all appointments where the date is todays date

## Restaurant reviews app

- Create a User Model & Table

  - users should have a username, age, and timestamps
  - a user has many reviews
  - create a method #favorite_restaurants that returns all restaurants rated 5 by this user

- Create a Review Model & Table

  - review should have title, rating(1-5), content, and timestamps
  - review belongs to a user
  - review belongs to a restaurant
  - create a method .top_rated that returns all reviews that have a rating of 5

- Create a Restaurant Model & Table

  - restaurant should have a name, location, and phone number
  - restaurant has many reviews
  - restaurant belongs to a category
  - create a method #average_rating that returns the average of all a restaurants reviews rating attribute
  - create a method .top_rated that returns all the restaurants whose average rating is above 4.0

- Create a Category Model & Table
  - category should have a title or name
  - category has many restaurants
  - create method #top_rated that returns the top rated restaurant in the category
