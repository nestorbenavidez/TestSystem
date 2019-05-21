# List of Requirements 
Test System 1.0

* Create a web based system requiring authentication  
* you can use admin/admin as username/password    
* Once authenticated user can create customers, First, Last, phone and upload of an image.
* Once customer is crated, user can see the list of customers already created.
* A customer can then have a Project assigned to them, so in a customer profile, the user can click “add project”
* A project would have a Name, Description, Due Date and a cost.
* A customer can have up to two active projects, no more than two can be assigned unless one project is deactivated. Projects can be   seen/sorted in any view type you wish.
* Last requirement: An existing project can be “copied” (used as a template), and assigned to a different customer.

# Installing
Main gems
* Sorcery - User Admin and Sessions
* Carrierwave- Image upload 
* erd - Entity Relationship Diagram creation for testing

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