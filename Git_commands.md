
Git commands
============


## Add Git repository

git init

git add .

git commit -m "Depot Scaffold"


## Clone existing Git repository

git clone gitosis@git.ibr.cs.tu-bs.de:contiki.git


&nbsp;


## Git configuration

git config --global --list &nbsp;&nbsp;&nbsp; // Git configuration

git config –-global alias.rb rebase &nbsp;&nbsp;&nbsp; // add aliases


&nbsp;


## Revert

git checkout . &nbsp;&nbsp;&nbsp; // revert


&nbsp;



## Git branches (server)

cat .git/config &nbsp;&nbsp;&nbsp; // show branches

git remote show &nbsp;&nbsp;&nbsp; // list of remotes

git remote show heroku &nbsp;&nbsp;&nbsp; // address of repository on Heroku


### New remote repository (server)

git remote add <name> <giturl>

git remote add origin https://github.com/arktokrates/depot.git


&nbsp;



## Git commit

git add <file>

git rm <file>

git checkout -- readme.txt &nbsp;&nbsp;&nbsp; // to discard changes in working directory

git commit --amend -m "New commit message"

git show <commit>

git diff a..b &nbsp;&nbsp;&nbsp; // check changes between two commits


## From server to working copy

git pull

git pull -rebase



&nbsp;



Cf. also this [Git Cheat Sheet](http://cheat.errtheblog.com/s/git).


&nbsp;




