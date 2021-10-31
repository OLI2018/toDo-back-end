
class ApplicationController < Sinatra::Base

set :default_content_type, 'application/json'

get '/categories' do
categories = Category.all
categories.to_json
end

post '/todos' do
category = Category.find(params[:category_id])
todo = Todo.create!(text: params[:text], category: category)
todo.to_json(include: :category)
end

get '/todos' do
todos = Todo.all.preload(:category)
todos.to_json(include: :category)
end

delete '/todos/:id' do
todo = Todo.find(params[:id])
todo.destroy
todo.to_json
end

get '/categories/:id' do
category = Category.find(params[:id])
category.to_json(include: :todos)
end

get '/categories/:id/todos' do
category = Category.find(params[:id])
category.todos.to_json
end

end

