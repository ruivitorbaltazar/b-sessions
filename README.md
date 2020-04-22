# b - sessions

'b - sessions' is a mock-up session management platform.
Simple CRUD app built by [ruivitorbaltazar](github.com/ruivitorbaltazar) with:

* Ruby 2.6.5

* Ruby on Rails 5.2.4.2

* PostgreSQL 12.2


## Features

It allows for:

* Sign up/Log in/Log out as User
![Landing](../assets/landing.png?raw=true)

* Create/Edit/Delete Sessions
![New Session](../assets/new_session.png?raw=true)

* See list of Sessions you are hosting or just attending
![Sessions](../assets/sessions.png?raw=true)

* Check individual Session
![Show Session](../assets/show_session.png?raw=true)

* Add/Remove Trainees to Sessions
![Edit Session](../assets/edit_session.png?raw=true)


## Local Setup

You can clone this app to your machine to test it locally.
Just follow these steps, using the command line:

1. Make sure Ruby is installed on your system:
```ruby -v```
*If you don't see version of Ruby, check [how to install Ruby](https://www.ruby-lang.org/en/documentation/installation/)*

2. Make sure Rails is also installed:
```rails -v```
*If you don't see version of Rails, check [how to install Rails](https://guides.rubyonrails.org/v5.0/getting_started.html)*

3. Clone this repository into a folder of your choosing:
```git clone git@github.com:ruivitorbaltazar/b-sessions.git```

4. Install all dependencies:
```bundle install```

5. Create database:
```rails db:create```

6. Do all necessary database migrations:
```rails db:migrate```

7. Populate database:
```rails db:seed```

8. Run the application:
```rails s```

