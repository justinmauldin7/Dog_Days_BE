# Dog Days Backend API

[![Build Status](https://travis-ci.com/justinmauldin7/Dog_Days_BE.svg?branch=master)](https://travis-ci.com/justinmauldin7/Dog_Days_BE)


Dog Days is a Mod4 take home challenge project at [Turing School of Software & Design](https://turing.io/) where one student with 6 months experience in software development has 3 days to create an app using the dogs.ceo API.

![Current Version](.jpg)



#### Dog Days Production Links:
Live App:

Backend API: https://dog-days-api.herokuapp.com/api/v1/dogs


#### Dog Days Github Repositories:
Frontend: https://github.com/justinmauldin7/Dog_Days_FE

Backend: https://github.com/justinmauldin7/Dog_Days_BE

#### Dog Days Project Board Link:
https://github.com/justinmauldin7/Dog_Days_BE/projects/1



## Dog Days API Endpoints:

##### Get All Dogs:

```
GET /api/v1/dogs

[
    {
        "id": 1,
        "breed": "Labrador",
        "image": "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg",
        "created_at": "2019-04-16T18:39:53.610Z",
        "updated_at": "2019-04-16T18:39:53.610Z"
    },
    {
        "id": 2,
        "breed": "Labrador",
        "image": "https://images.dog.ceo/breeds/labrador/n02099712_8051.jpg",
        "created_at": "2019-04-16T18:39:53.617Z",
        "updated_at": "2019-04-16T18:39:53.617Z"
    },
    {
        "id": 3,
        "breed": "Labrador",
        "image": "https://images.dog.ceo/breeds/labrador/n02099712_7411.jpg",
        "created_at": "2019-04-16T18:39:53.618Z",
        "updated_at": "2019-04-16T18:39:53.618Z"
    },
    {
        "id": 4,
        "breed": "Beagle",
        "image": "https://images.dog.ceo/breeds/beagle/n02088364_12124.jpg",
        "created_at": "2019-04-16T18:39:53.620Z",
        "updated_at": "2019-04-16T18:39:53.620Z"
    },
    {
        "id": 5,
        "breed": "Pug",
        "image": "https://images.dog.ceo/breeds/pug/n02110958_13439.jpg",
        "created_at": "2019-04-16T18:39:53.621Z",
        "updated_at": "2019-04-16T18:39:53.621Z"
    },
    {
        "id": 6,
        "breed": "Pug",
        "image": "https://images.dog.ceo/breeds/pug/n02110958_14594.jpg",
        "created_at": "2019-04-16T18:39:53.623Z",
        "updated_at": "2019-04-16T18:39:53.623Z"
    }
]
```

##### Create a Dog:
You will need to pass in the params of "breed" & "image" into the URL to create a dog successfully.

```
POST /api/v1/dogs?breed=Labrador&image=https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg

{
    "id": 7,
    "breed": "Labrador",
    "image": "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg",
    "created_at": "2019-04-16T18:15:00.127Z",
    "updated_at": "2019-04-16T18:15:00.127Z"
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
* [RSpec](http://rspec.info/documentation/) - Testing Suite
* [TravisCI](https://travis-ci.org/) - Used for continuous integration on frontend & backend
* [Heroku](https://www.heroku.com/) - Used to deploy to production for frontend & backend


## Contributing

If contributing to the backend repository, you can submit a pull request [here](https://github.com/justinmauldin7/Dog_Days_BE).

If contributing to the frontend repository, you can submit a pull request [here](https://github.com/justinmauldin7/Dog_Days_FE).

I will review the request and merge it into master if it is approved.


## Author

* **Justin Mauldin** - *Team member* - [Justin's Github](https://github.com/justinmauldin7)


## Acknowledgments

* Thanks to our Mod4 instructors [Cory Westerfield](https://github.com/corywest) & [Dione Wilson](https://github.com/dionew1) for all their help and insight on this project.

* Thanks to all our other fellow [Turing School of Software & Design](https://turing.io/) - Mod4 classmates that helped think through design decisions on this project as well.
