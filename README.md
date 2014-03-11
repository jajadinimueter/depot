Ruby on Rails
=============

* Local: (http://localhost:3000)
* My app on heroku: (http://blooming-savannah-7464.herokuapp.com/products)




Getting started
===============


* Test data: db/seeds.rb


rails new depot		// create new rails application

cd depot

ls -p

rails generate scaffold Product title:string description:text image_url:string price:decimal	// Scaffolding

rake db:migrate		// apply database changes

rake test		// runt tests (Unit and Controller)

rake db:seed	// fill table (products) with test data

rake test:models	// test models

rake db:test:prepare		// prepare database for test (included in rake test)





Start PostgreSQL database server
================================

postgres -D /usr/local/var/postgres

psql postgres   // to start PostgreSQL console





Deployment on heroku.com
========================

* Important link: (https://devcenter.heroku.com/articles/getting-started-with-rails4#use-postgres)


## Heroku commands

git remote show heroku		// address of repository on Heroku

heroku logs		// console logs of Heroku

heroku run rake db:migrate		// perform database migrations also on Heroku

heroku run rake db:seed		// load data on Heroku

git ps heroku master		// push local branch into remote branch on Heroku (remote + branch)






Git commands
============

## Add Git repository

git init
git add .
git commit -m "Depot Scaffold"



## Git configuration

git config --global --list		// Git configuration

git config –-global alias.rb rebase		// add aliases



## Revert

git checkout .		// revert




## Git branches

cat .git/config		// show branches

git remote show		// list of remotes

git remote show heroku	// address of repository on Heroku





Cf. also this [Git Cheat Sheet](http://cheat.errtheblog.com/s/git).




Helpful links
=============

* Markdown Syntax: (http://daringfireball.net/projects/markdown/syntax)


