class ClassmatesController < ApplicationController
  def show
    @classmate = Classmate.find(params[:id])
  end

  def new
  end

  def create
    @classmate = Classmate.new(classmate_params)

    @classmate.save
    redirect_to @classmate
  end

  private
    def classmate_params
      params.require(:classmate).permit(:first_name, :last_name, :portfolio_url, :location)
    end
    
  end
