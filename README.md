# Installing

Prerequisites 
* ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-linux]
* Rails 5.2.3

Installation procedure 

* Clone git repository to your local machine
* 'bundle install' to install all necessary gems 
* Local project runs on SQLite so you need to prepare DB with the following:

1. rake db:drop && rake db:create 
2. rake db:migrate
3. rake db:seeds (this will create the user admin/admin)

* Run embedded PUMA server with 'rails s'
* Open your browser at http://localhost:3000

# History of commands used to create project
...