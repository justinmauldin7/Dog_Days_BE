# Dog Days Backend API

[![Build Status](https://travis-ci.com/justinmauldin7/Dog_Days_BE.svg?branch=master)](https://travis-ci.com/justinmauldin7/Dog_Days_BE)

![Dashboard](https://imgur.com/h9Wtgum.jpg)


Dog Days is a Mod4 take home challenge project at [Turing School of Software & Design](https://turing.io/) where one student with 6 months experience in software development has 3 days to create an app using the [Dog API](https://dog.ceo/dog-api/).

This is the backend API that is built as a micro service to create, show & delete users & favorites from the Dog Days frontend rails app.


#### Dog Days Production Links:
Live App: https://dog-days.herokuapp.com/

Backend API: https://dog-days-api.herokuapp.com/api/v1/dogs


#### Dog Days Github Repositories:
Frontend: https://github.com/justinmauldin7/Dog_Days_FE

Backend: https://github.com/justinmauldin7/Dog_Days_BE

#### Dog Days Project Board Link:
https://github.com/justinmauldin7/Dog_Days_BE/projects/1


## Database Schema:

![Image description](https://imgur.com/ElVYXRc.jpg)


## Dog Days API Endpoints:

##### Create a User:
You will need to pass in the params of "name", "email", "password" & "password_confirmation" into the URL to create a user successfully.

```
POST /api/v1/users?name=Justin&email=justin@email.com&password=password&password_confirmation=password

{
    "id": 1,
    "name": "Justin",
    "email": "justin@email.com",
    "password_digest": "$2a$10$c2y3B4moPDfBRd48/j26t.W3ecROnpLOjoYoA.Wh5TXngdr6GIINK",
    "created_at": "2019-04-17T05:29:44.978Z",
    "updated_at": "2019-04-17T05:29:44.978Z"
}
```

##### Get a Single User:
You will need to know and pass in the email address of the user you are looking to find into the URL for a successful response.

```
GET /api/v1/users?email=justin@email.com

{
    "id": 1,
    "name": "Justin",
    "email": "justin@email.com",
    "password_digest": "$2a$10$c2y3B4moPDfBRd48/j26t.W3ecROnpLOjoYoA.Wh5TXngdr6GIINK",
    "created_at": "2019-04-17T05:29:44.978Z",
    "updated_at": "2019-04-17T05:29:44.978Z"
}
```

##### Create a Dog for a User:
You will need to pass in the params of "user_id", "breed" & "image" into the URL to create a dog successfully.

```
POST /api/v1/dogs?user_id=1&breed=Labrador&image=https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg

{
    "id": 7,
    "user_id": 1,
    "breed": "Labrador",
    "image": "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg",
    "created_at": "2019-04-16T18:15:00.127Z",
    "updated_at": "2019-04-16T18:15:00.127Z"
}
```

##### Get All Dogs for a Specific User:

```
GET /api/v1/dogs?user_id=1

[
    {
        "id": 1,
        "user_id": 1,
        "breed": "Labrador",
        "image": "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg",
        "created_at": "2019-04-16T18:39:53.610Z",
        "updated_at": "2019-04-16T18:39:53.610Z"
    },
    {
        "id": 2,
        "user_id": 1,
        "breed": "Labrador",
        "image": "https://images.dog.ceo/breeds/labrador/n02099712_8051.jpg",
        "created_at": "2019-04-16T18:39:53.617Z",
        "updated_at": "2019-04-16T18:39:53.617Z"
    },
    {
        "id": 3,
        "user_id": 1,
        "breed": "Labrador",
        "image": "https://images.dog.ceo/breeds/labrador/n02099712_7411.jpg",
        "created_at": "2019-04-16T18:39:53.618Z",
        "updated_at": "2019-04-16T18:39:53.618Z"
    },
    {
        "id": 4,
        "user_id": 1,
        "breed": "Beagle",
        "image": "https://images.dog.ceo/breeds/beagle/n02088364_12124.jpg",
        "created_at": "2019-04-16T18:39:53.620Z",
        "updated_at": "2019-04-16T18:39:53.620Z"
    },
    {
        "id": 5,
        "user_id": 1,
        "breed": "Pug",
        "image": "https://images.dog.ceo/breeds/pug/n02110958_13439.jpg",
        "created_at": "2019-04-16T18:39:53.621Z",
        "updated_at": "2019-04-16T18:39:53.621Z"
    },
    {
        "id": 6,
        "user_id": 1,
        "breed": "Pug",
        "image": "https://images.dog.ceo/breeds/pug/n02110958_14594.jpg",
        "created_at": "2019-04-16T18:39:53.623Z",
        "updated_at": "2019-04-16T18:39:53.623Z"
    }
]
```

##### Delete a Dog for a User:
You will need to pass in the id number of the dog you are wanting to delete, as well as, your user id.  
*(In this example, we are passing in the id "7" and deleting the dog with id number 7 from user 1.)*

```
DELETE /api/v1/dogs/7?user_id=1

{
    "success": "Dog id number 8 has been deleted from user_id 1"
}
```


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

#### Prerequisites:

* Install Ruby (Version 2.4.5) [Download here](https://www.ruby-lang.org/en/news/2018/10/17/ruby-2-4-5-released/)
* Install Rails (Version 5.2.2) - ```gem install rails -v 5.2.0.beta2 --pre```
* Install Bundler (Version 2.0) - ```gem install bundler```
* Heroku Account - (Create a free account [here](https://signup.heroku.com/) if you don't have one already.)


### Installing:

To run this application locally, clone this [repo](https://github.com/justinmauldin7/Dog_Days_BE) and follow the steps below:

1) Install dependencies:
```
$ bundle install
```

2) Install Rspec:
```
$ rails g rspec:install
```

3) Create, migrate & seed the database:
```
$ rails db:{create,migrate,seed}
```

4) Start your server:
```
$ rails s
```

5) Open browser and navigate to:

```
localhost:3000/api/v1/dogs
```


## Running the Test Suite

Dog Days has a suite of tests for every API endpoint in the app.

#### Running the Full Test Suite:

From the root of the directory, type the below command to run the full test suite:

```
$ rspec
```


## Deployment

To deploy this app through Heroku as we have, you can follow these [instructions](https://devcenter.heroku.com/articles/git) on Heroku's website.

## Built With

* [Ruby - Version 2.4.5](https://ruby-doc.org/core-2.4.5/) - Base code language
* [Rails - Version 5.2.2](https://guides.rubyonrails.org/v5.2/) - Web framework used
* [Faraday](https://github.com/lostisland/faraday) - HTTP Client for API calls
* [Dog API](https://dog.ceo/dog-api/) - API used to get dog images
* [RSpec](http://rspec.info/documentation/) - Testing Suite
* [TravisCI](https://travis-ci.org/) - Used for continuous integration on frontend & backend
* [Heroku](https://www.heroku.com/) - Used to deploy to production for frontend & backend


## Contributing

If contributing to the backend repository, you can submit a pull request [here](https://github.com/justinmauldin7/Dog_Days_BE).

If contributing to the frontend repository, you can submit a pull request [here](https://github.com/justinmauldin7/Dog_Days_FE).

I will review the request and merge it into master if it is approved.


## Author

* **Justin Mauldin** - [Justin's Github](https://github.com/justinmauldin7)


## Acknowledgments

* Thanks to our Mod4 instructors [Cory Westerfield](https://github.com/corywest) & [Dione Wilson](https://github.com/dionew1) for all their help and insight on this project.

* Thanks to all our other fellow [Turing School of Software & Design](https://turing.io/) - Mod4 classmates that helped think through design decisions on this project as well.
