![Screenshot](https://raw.githubusercontent.com/bradleyden/fieldr-front-end/master/Fieldrscreenshot.png)

# Fieldr API

Welcome to Fieldr, a fullstack baseball scoring and data visualization application made by a fan, for fans.

## Links

-   [Deployed Client](https://bradleyden.github.io/fieldr-front-end)
-   [Deployed API](https://serene-hollows-15808.herokuapp.com)
-   [Client Repo](https://github.com/bradleyden/fieldr-front-end)

## Technologies Used

Front-end:
HTML/SCSS and Bootstrap
JavaScript
Ember

Back-end:
Ruby on Rails
PostgreSQL

## Using the API

The API contains three resource tables, Users, Games, and Plateappearances.

The routes are as follows:

```Ruby
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :games, except: [:new, :edit] do
    resources :plateappearances, only: [:index, :create]
  end
  resources :plateappearances, only: [:show, :update, :destroy]
```


## Planning

-   [ERD](https://drive.google.com/open?id=0BxljZc10IXeSbTdCcGRoS3ZPZGdlZmIyUnBwX1gyQ3BmZ2pn)

## Process

This project grew from a love for watching and following baseball, and a desire to bring the multitudes of different stats to life through visualization.

I began the process by trying to boil baseball down to the basic concepts that could be recreated with basic data entered by the user. It turns out baseball is much more complex than it may originally seem, so it was a challenge to conceptualize the data in a way that made it manageable in the time I had but still provided a complete product.

Once I had the data planned out and mapped, I began to build out my API for the initial resource, games, and a simple Ember front end to start the initial CRUD process. As I began to get this working, I expanded the data relationship to include plate appearances, and was able to get all of the data I needed to start mapping a visual UI.

## Installation Instructions

- Fork and clone this repository
- bundle install
