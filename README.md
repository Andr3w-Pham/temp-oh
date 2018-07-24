# README for [Temp-Oh](https://temp-oh.herokuapp.com/)
>Tempoh is a two sided marketplace for hosts and aspiring DJs.
Our focus is to enable new DJs to promote their music and also provide them a platform to receive bookings from hosts for various events.
# Temp-Oh ![CI status](https://img.shields.io/badge/build-passing-brightgreen.svg)
## [Temp-Oh Repo Link](https://github.com/Andr3w-Pham/temp-oh)

## Installation

### To install Temp-Oh

`$ git clone https://github.com/Andr3w-Pham/temp-oh.git`

`$ cd temp-oh`

`$ bundle install`

`$ rake db:create`(Postgresql Database)

`$ rake db:migrate`

### Requirements

* Ruby 2.4.1
* Rails 5.2.0
* Postgresql

### Project Management
* Before tackling any project it's best to plan everything out first. For this project I used [Trello](https://trello.com/) to to track my progress.

> Temp-Oh Trello
![alt text](https://i.imgur.com/oHJFyJd.png)
> I also made a spreadsheet to estimate required time for each task.
![alt text](https://i.imgur.com/xUX5UIj.png)

# Markdown Guide
**Resources:**
* [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* [Markdown Previewer](https://dillinger.io/)


### Issue & Solution
 **Issue:**
- No platform available for new & aspiring DJs to promote their music and receive bookings.

**Solution:**
- Build a two-sided marketplace that provides a platform for new & aspiring DJs to promote themselves and the chance to receive bookings from hosts(customers)

### User Stories
As a potential host(customer), I want to search for a DJ, so I can book a DJ for an event.

* I can browse through a list of DJs
* I can listen to their music
* I can review DJs
* Pressing 'Book' means that you agree to pay a DJ for their service.


As a DJ I want hosts(customers) to be able to browse my profile, so I can get bookings

* I can upload many songs and allow the public to browse & listen to my uploads
* I'm able to see all of the reviews about myself
* When someone presses 'Book', I will be able to check it in my bookings list

### Workflow Diagram
![alt text](https://i.imgur.com/hQaOiM4.png)
###  Wireframes
![alt text](https://i.imgur.com/MlANfAK.png)
![alt text](https://i.imgur.com/iuk3jj4.png)
![alt text](https://i.imgur.com/1PwMjbA.png)
![alt text](https://i.imgur.com/YE5RodH.png)
![alt text](https://i.imgur.com/wLQYday.png)

### Entity Relationship Diagram (ERD)
![alt text](https://i.imgur.com/VyA6pqi.png)

## Implementation

### Postgresql database
Postgresql was used from the start.
Example:  ```rails new test --database postgresql```

**Resources:**

* [Install Postgresql, Video Guide](https://www.youtube.com/watch?v=5AOkxqFaYEE)

### Authentication & Authorization

**Resources:**

* [Devise - Guide](https://github.com/plataformatec/devise#getting-started)
* [Authenticate with Google](https://github.com/zquestz/omniauth-google-oauth2)


### Payments
**Resources:**

* [Stripe Gem](https://github.com/stripe/stripe-ruby)
* [Stripe Guide](https://stripe.com/docs/checkout/rails)

### Deployment

I deployed my app on [heroku](https://www.heroku.com/) early on and I tried to deploy as often as I could in order to check for errors/bugs.

### Transactional Emails

**Resources:**
* [Mailgun](https://github.com/mailgun/mailgun-ruby)

### Search & Filtering

**Resources:**
* [PG Search](https://github.com/Casecommons/pg_search)
* [PG Search Guide](https://www.mnishiguchi.com/2016/06/27/search-form-using-pg-search-gem/)

### File uploads
**Resources:**
* [Carrierwave](https://github.com/carrierwaveuploader/carrierwave)
* [Amazon S3 with Carrierwave (fog-aws)](https://github.com/fog/fog-aws)

### Styling
**Resources:**
* [Bootstrap 4 Gem](https://github.com/twbs/bootstrap-rubygem)
* [Bootstrap 4 Documentation](https://getbootstrap.com/docs/4.1/getting-started/introduction/)

### Notes on future development / project improvements
* Improve the styling of Temp-Oh
* Make it more responsive
* Improve the backend

## Contributing
>Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
Please make sure to update tests as appropriate.
