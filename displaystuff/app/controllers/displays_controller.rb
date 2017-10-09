class DisplaysController < ApplicationController
  
  def index
    render text: "What do you want me to do today!?"
  end

  def hello
    render text: "Hello Coding Dojo"
  end

  def say
    unless params[:name]
      render text: "SAying Hello!"
    else
      if params[:name] == "michael"
        redirect_to "/say/hello/joe"
      else
        render text: "Saying Hello #{params[:name]}!"
      end
    end
  end

  def times
    session[:count] ||= 0
    render text: "You have visited this url #{session[:count] += 1} times!"
  end
end
