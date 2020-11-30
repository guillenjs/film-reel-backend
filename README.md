# Filmreel-backend

Filmreel is an application tha allows you to search for movies, view their descriptions, and will allow you to like them or dislike them. This repo will allow full functionality to the application. 

Live demo website: [https://film-reel.netlify.app/](https://film-reel.netlify.app/)

## Installation	
 In order to properly install this rails application as an api you will need to have [Homebrew](https://brew.sh/), [Ruby](https://www.ruby-lang.org/en/), [Rails](https://rubyonrails.org/), and [PostgreSQL](https://www.postgresql.org/) installed globally on your machine.


1. Clone repo and cd into folder
2.  Bundle Install	
    ###### `$ bundle install`	
3. Make sure postgresql is open and running    
4. create database and migrate tables	
    ###### `$ rails db:create`
    ###### `$ rails db:migrate`
5. run rails server 	 
    ###### `$ rails s`	   
6. once install and server is running you can run front end repo - [filmreel](https://github.com/guillenjs/film-reel-frontend)	

## Tech Stack
 - [Ruby 2.6.1](https://www.ruby-lang.org/en/news/2019/01/30/ruby-2-6-1-released/)	
 - [Ruby on Rails](https://rubyonrails.org/)	   
 - [PostgreSQL](https://www.postgresql.org/)