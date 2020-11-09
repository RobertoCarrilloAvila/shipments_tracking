# Shipping Tracking

This platform is and api to track multiple shipments in multiple carries

## Getting started

### Requirements

* [Ruby] - 2.7.1
* [Rails] - 6.0.3.4
* [Redis] - 4.0.9

### Instructions

To get start with the app, clone the repo

```
$ git clone [repo-url]
```

Install the needed gems

```
$ bundle install
```

Next, create the local database, and load the structure of the database

```
$ rails db:setup
```

you’ll be ready to run the app in a local server (You may have to change the port if you are running more than 2 applications.)

```
$ rails server
```

finally run the sidekiq server
```
$ bundle exec sidekiq
```
