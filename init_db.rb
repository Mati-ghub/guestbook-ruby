require 'sequel'

DB = Sequel.sqlite "database.db"

DB.create_table :posts do
  primary_key :id 
  String :author
  Text :content
  DataTime :created_at
end

posts = DB[:posts]

posts.insert author: "Batman",
  content: "Hello",
  created_at: Time.now - 5

posts.insert author: "Spiderman",
  content: "Siemka",
  created_at: Time.now 