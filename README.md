Ruby on Rails
=============

* Local: http://localhost:3000
* My app on heroku: http://blooming-savannah-7464.herokuapp.com/products


&nbsp;


* [Git commands](/Git_commands.md)


&nbsp;



Getting started
===============


* Test data: db/seeds.rb


rails new depot &nbsp;&nbsp;&nbsp; // create new rails application

cd depot

ls -p

rails generate scaffold Product title:string description:text image_url:string price:decimal &nbsp;&nbsp;&nbsp; // Scaffolding

rake db:migrate &nbsp;&nbsp;&nbsp; // apply database changes

rake test &nbsp;&nbsp;&nbsp; // runt tests (Unit and Controller)

rake db:seed &nbsp;&nbsp;&nbsp; // fill table (products) with test data

rake test:models &nbsp;&nbsp;&nbsp; // test models

rake db:test:prepare &nbsp;&nbsp;&nbsp; // prepare database for test (included in rake test)


&nbsp;

rails generate controller Store index &nbsp;&nbsp;&nbsp; // Store controller with method index

rake test:controllers &nbsp;&nbsp;&nbsp; // test controllers specifically

&nbsp;

&nbsp;


## Minor issues

* Warning: «Insecure world writable dir /usr/local in PATH, mode 040777» --> correction: sudo chmod o-w /usr/local



&nbsp;



Start PostgreSQL database server
================================

postgres -D /usr/local/var/postgres

psql postgres &nbsp;&nbsp;&nbsp; // to start PostgreSQL console



&nbsp;



Deployment on heroku.com
========================

* Important link: https://devcenter.heroku.com/articles/getting-started-with-rails4#use-postgres


## Heroku commands

git remote show heroku &nbsp;&nbsp;&nbsp; // address of repository on Heroku

heroku logs &nbsp;&nbsp;&nbsp; // console logs of Heroku

heroku run rake db:migrate &nbsp;&nbsp;&nbsp; // perform database migrations also on Heroku

heroku run rake db:seed &nbsp;&nbsp;&nbsp; // load data on Heroku

git ps heroku master &nbsp;&nbsp;&nbsp; // push local branch into remote branch on Heroku (remote + branch)



&nbsp;




&nbsp;


Helpful links
=============

* Markdown Syntax: http://daringfireball.net/projects/markdown/syntax


