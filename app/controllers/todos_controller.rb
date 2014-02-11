class TodosController < ApplicationController

# def index
# Todo.create!(title: "Red: Write specs and see them fail")
#  @todos = Todo.all 
# end

# def show
# id = params[:id]
# @todo = Todo.find(id)
# end

def new
	@todo = Todo.new
end


def create
	title = params[:todo].permit(:title)
	@todo = Todo.create title
	redirect_to "/todos/new"
end



end
