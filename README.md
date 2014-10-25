rorapp
======

Ruby on Rails/MySQL VM for Vagrant<br />

Designed to get up and runnning as fast as possible.<br />

Vagrant setup that provides newest versions of:
<br />
Apache<br />
PHP<br />
Ruby on Rails<br />
Git<br />
MySQL (root password is installed as pass123)<br />

After Install<br />
=============<br />
<br />
Add to Gemfile:<br />
gem 'mysql2'<br />
<br />
Add to config/database.yml:<br />
default: &default<br />
  adapter: mysql2<br />
  encoding: utf8<br />
  username: root<br />
  password: pass123<br />
  host: 127.0.0.1<br />
  port: 3306<br />
<br />
development:<br />
  <<: *default<br />
  database: database_development<br />
test:<br />
  <<: *default<br />
  database: database_test<br />
<br />
production:<br />
  <<: *default<br />
  database: database_production<br />
<br />
In app root folder:<br />
migrate db:create<br />
