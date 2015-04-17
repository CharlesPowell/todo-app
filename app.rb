require 'bundler'
Bundler.require()


# ** Connection **
ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :database => "todo_list"
)

# ** Models **
require './models/todo.rb'

get '/' do
  erb :index
end

get '/api/todos' do
    content_type :json
    Todo.all.to_json
end

get '/api/todos/:id' do
  content_type :json
  Todo.find_by(id: params[:id]).to_json
end

post '/api/todos' do
  content_type :json
  post = Todo.create(params[:todo])
  post.to_json
end

put '/api/todos/:id' do
  content_type :json
  post = Todo.find_by(id: params[:id])
  post.update()
end
=begin
patch '/api/todos/:id' do
  content_type :json
  post = Todo.find_by(id: params[:id])
  post.update(params[:key] params[:val])
end

delete '/api/todos/:id' do
  content_type :json
  Todo.find_by(id: params[:id]).destroy#delete
end
=end
