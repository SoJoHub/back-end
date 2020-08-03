class TodosController < ApplicationController
    before_action :authorized

    def update 
        todo = Todo.find(params["id"])
        status = todo.update(task: params["task"], complete: params["complete"])
        render json: todo
    end
    


end
