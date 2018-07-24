# README for Temp-Oh (Two Sided Marketplace)

### Project Management
* Before tackling any project it's best to plan everything out first. For this project I used [Trello](https://trello.com/) to to track my progress.

* I also made a spreadsheet to estimate required time for each task.

### Documentation
* Link to deployed website
* Issue & Solution
* User stories
* Workflow diagram
* Style guide
* Wireframes
* ERD
* Notes on future development / project improvements

# Link to my app on heroku
* [Temp-Oh](https://temp-oh.herokuapp.com/)

# Markdown Guide
**Resources:**
* [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* [Markdown Previwer](https://dillinger.io/)


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

**Resources:**

### Workflow Diagram
Add Here

### Style Guide
I will refer to Google's [Material Design Colour Scheme.](https://material.io/guidelines/style/color.html#color-color-palette)

###  Wireframes
Add Here

### Entity Relationship Diagram (ERD)
Add Here

**Resources:**
* [DB Designer](https://dbdesigner.net/)

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
