# password_generator

Use this repository to create new Sinatra apps. 

Optionally, to use `ActiveRecord` for database operations, add to the `app.rb`:

```ruby
require "sinatra/activerecord"
```

And in the `config/environment.rb` file add this code block:

```ruby
configure do
  # setup a database connection
  set(:database, { adapter: "sqlite3", database: "db/development.sqlite3" })
end
```

Some rights reserved — see [LICENSE.txt](LICENSE.txt)

``` ruby
Password Generator
Develop a password generator that generates random passwords based on user-specified criteria 
(e.g., length, inclusion of numbers or special characters).
```
