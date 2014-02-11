TodoWithRspec::Application.routes.draw do
 	get "/todos", to: "todos#index"

 	get "/todos/new", to: "todos#new", as: :new_todo

 	get "/todos/:id/show", to: "todos#show"
 	
 	post "/todos", to: "todos#create"

end
