class DojosController < ApplicationController
    def index
        @dojos = Dojo.all
    end

    def new
    end

    def create
        Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
        redirect_to '/dojos'
    end

    def show
        @dojos = Dojo.find(params[:id])
        @students = @dojos.students
    end

    def edit
        @dojos = Dojo.find(params[:id])
    end

    def update
        dojos = Dojo.find(params[:id])
        dojos.branch = params[:branch]
        dojos.street = params[:street]
        dojos.city = params[:city]
        dojos.state = params[:state]
        dojos.save

        redirect_to '/dojos'       
    end

    def destroy
        dojos = Dojo.find(params[:id])
        dojos.destroy
        redirect_to '/dojos'
    end
end
