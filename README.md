Chef mysqldump LWRP
=========================
LWRP for using mysqldump tool in your chef recipes.  Dumps MySQL Database(s) to a file.


Requirements
------------
MySQL Client - The mysqldump Chef LWRP requires MySQL Client to be installed


Usage
------------

#### Attribute Parameters
- dbhost: mysql server host
- dbuser: username to connect to the mysql host with
- dbpassword: password to authenticate dbuser
- dbname: name of the database to dump (leave blank for all databases)
- overwrite: set to true to dump SQL even if dumpfile already exists



#### Examples
```ruby
# Dump all databases on localhost
mysqldump '/path/to/dumpfile.sql' do
  dbhost localhost
  dbuser root
  dbpassword password
end
```

```ruby
# Dump users databases on localhost on every run
mysqldump '/path/to/dumpfile.sql' do
  dbhost localhost
  dbuser root
  dbpassword password
  dbname users
  overwrite true
end
```


License and Authors
-------------------
Authors: Simon Moxon
