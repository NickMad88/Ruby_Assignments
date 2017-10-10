class StudentsController < ApplicationController
    def index
    end

    def new
        @dojos = Dojo.all
        @dojo = Dojo.find(params[:dojo_id])
    end

    def create
        Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo: Dojo.find(params[:dojo_id]))
        redirect_to "/dojos/#{params[:dojo_id]}"
    end

    def show
        @dojos = Dojo.find(params[:dojo_id])
        @students = Student.find(params[:id])
    end
    
    def destroy
        students = Student.find(params[:id])
        students.destroy
        redirect_to "/dojos/#{params[:dojo_id]}"
    end

end
