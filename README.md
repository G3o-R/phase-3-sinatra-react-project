# phase-3-sinatra-react-project

## Installation 
Being this repository is strictly the back end 'bundle install' is the only command necessary to install the required gems. In order to access the front end, git clone the [phase-3-client-job-site](https://github.com/G3o-R/phase-3-client-job-site) and run 'bundle exec rake server' in the command line.

## General Information

The data base consists of two models, Company and Job. The Company model consists of two atributes not including time stamps, which are **company_name** and **logo_url**. The Job model cosists of five attributes again not including time tamps, which are **position**, **job_description**, **pay**, **location**, and **company_id**. Company has a *has_many* **jobs** relationship with Job, and Job a *belongs_to* **company** relationship. 

**Job** is the only model with full CRUD capability, with **Company** only missing a PATCH route. 

## Technologies Used:

* Ruby
* Sinatra
* SQL
* Active Record