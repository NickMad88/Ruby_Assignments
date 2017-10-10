class SurveysController < ApplicationController
  
  def index
    session[:views] ||= 0
  end

  def process_survey
    session[:views] = session[:views] + 1
    session[:results] = params[:survey]

    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:views]} times now"

    redirect_to '/surveys/results'
  end

  def results
    @results = session[:results]
  end
end
