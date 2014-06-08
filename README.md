Ruby on Rails
=============

* Local: http://localhost:3000
* GitHub repository: http://github.com/arktokrates/depot-r
* My app on heroku: http://depot-r.herokuapp.com
* Curriculum: http://edu.panter.ch/WebProgrammierung2014


&nbsp;


* [Git commands](/Git_commands.md)


&nbsp;



Getting started
===============

* Versions of Rails installed: gem list --local rails
* Default version: rails --version
* Application's environment (in project folder): rake about &nbsp;&nbsp;&nbsp; or: bundle exec rake about

&nbsp;

* Rails documentation: http://api.rubyonrails.org/

* Rails console: rails console &nbsp;&nbsp;&nbsp;or: rails c

&nbsp;

* Test data: db/seeds.rb

* Server (in project folder): rails s &nbsp;&nbsp;&nbsp; or: rails server (webrick)
* Browser URL: http://localhost:3000

&nbsp;

gem install rails --version 4.0.1	// generate project environment

rails new depot &nbsp;&nbsp;&nbsp; // create new rails application

cd depot

ls -p

rails generate scaffold Product title:string description:text image_url:string price:decimal &nbsp;&nbsp;&nbsp; // Scaffolding

rake db:migrate &nbsp;&nbsp;&nbsp; // apply database changes (migration)

rake test &nbsp;&nbsp;&nbsp; // runt tests (Unit and Controller)

rake db:seed &nbsp;&nbsp;&nbsp; // fill table (products) with test data

rake test:models &nbsp;&nbsp;&nbsp; // test models

rake db:test:prepare &nbsp;&nbsp;&nbsp; // prepare database for test (included in rake test)


&nbsp;

rails generate controller Store index &nbsp;&nbsp;&nbsp; // Store controller with method index

rake test:controllers &nbsp;&nbsp;&nbsp; // test controllers specifically

rake test test/controllers/line_items_controller_test.rb

&nbsp;

&nbsp;


(Chapter 9: Task D: Cart Creation)

rails generate scaffold Cart &nbsp;&nbsp;&nbsp; // create a shopping cart

rails generate scaffold LineItem product:references cart:belongs_to &nbsp;&nbsp;&nbsp; // generate the Rails models and populate the migrations to create the corresponding tables

&nbsp;

(Chapter 10: Task E: A Smarter Card)

rails generate migration add_quantity_to_line_items quantity:integer &nbsp;&nbsp;&nbsp; // add_XXX_to_TABLE (or: remove_XXX_from_TABLE) + name:datatype

* Change: default value for the new column

rails generate migration combine_items_in_cart

rake db:rollback &nbsp;&nbsp;&nbsp; // rewind migration

rake db:migrate:status &nbsp;&nbsp;&nbsp; // check the status of migrations

rake log:clear LOGS=test &nbsp;&nbsp;&nbsp; // clear the test logs


&nbsp;

#### Error logging:

def invalid_cart
&nbsp;&nbsp; logger.error "Attempt to access invalid cart #{params[:id]}"
&nbsp;&nbsp; redirect_to store_url, notice: 'Invalid cart'
end

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



Gem documentation
=================

* Start the gem documentation server: gem server

* Access: http://localhost:8808


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

* Plugin repository: http://www.rubygems.org &nbsp;&nbsp;&nbsp; http://agilewebdevelopment.com

* Find the right application: www.ruby-toolbox.com

* Regular ruby expressions: www.rubular.com






Active::Record	:ActiveRecord
dependent => destroy = dependent: destroy





Fangfragen!
Genau lesen!

Ausprobieren in rails console


