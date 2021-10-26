
class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  # get '/categories' do
  #     categories = Category.all
  #     categories.to_json
  # end

  get '/todos' do
    todos = Todo.all
    todos.to_json
end



delete '/todos/:id' do
  # find the review using the ID
  todo = Todo.find(params[:id])
  # delete the review
  todo.destroy
  # send a response with the deleted review as JSON
  todo.to_json
end



  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json(include: :todos)
  end

end

