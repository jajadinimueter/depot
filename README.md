Ruby on Rails
=============

* Local: http://localhost:3000
* My app on heroku: http://blooming-savannah-7464.herokuapp.com/products


&nbsp;


Getting started
===============


* Test data: db/seeds.rb


rails new depot &nbsp;&nbsp;&nbsp; // create new rails application

cd depot

ls -p

rails generate scaffold Product title:string description:text image_url:string price:decimal	// Scaffolding

rake db:migrate     // apply database changes

rake test		// runt tests (Unit and Controller)

rake db:seed	// fill table (products) with test data

rake test:models	// test models

rake db:test:prepare		// prepare database for test (included in rake test)


&nbsp;


## Minor issues

* Warning: «Insecure world writable dir /usr/local in PATH, mode 040777» --> correction: sudo chmod o-w /usr/local



&nbsp;



Start PostgreSQL database server
================================

postgres -D /usr/local/var/postgres

psql postgres   // to start PostgreSQL console



&nbsp;



Deployment on heroku.com
========================

* Important link: https://devcenter.heroku.com/articles/getting-started-with-rails4#use-postgres


## Heroku commands

git remote show heroku		// address of repository on Heroku

heroku logs		// console logs of Heroku

heroku run rake db:migrate		// perform database migrations also on Heroku

heroku run rake db:seed		// load data on Heroku

git ps heroku master		// push local branch into remote branch on Heroku (remote + branch)



&nbsp;




Git commands
============

Test: [Git commands](/Git_commands.md)


## Add Git repository

git init

git add .

git commit -m "Depot Scaffold"


## Clone existing Git repository

git clone gitosis@git.ibr.cs.tu-bs.de:contiki.git


&nbsp;


## Git configuration

git config --global --list		// Git configuration

git config –-global alias.rb rebase		// add aliases


&nbsp;


## Revert

git checkout .		// revert


&nbsp;



## Git branches (server)

cat .git/config		// show branches

git remote show		// list of remotes

git remote show heroku	// address of repository on Heroku


### New remote repository (server)

git remote add <name> <giturl>

git remote add origin https://github.com/arktokrates/depot.git


&nbsp;



## Git commit

git add <file>

git rm <file>

git checkout -- readme.txt		// to discard changes in working directory

git commit --amend -m "New commit message"

git show <commit>

git diff a..b	// check changes between two commits


## From server to working copy

git pull

git pull -rebase



&nbsp;



Cf. also this [Git Cheat Sheet](http://cheat.errtheblog.com/s/git).


&nbsp;


Helpful links
=============

* Markdown Syntax: http://daringfireball.net/projects/markdown/syntax


