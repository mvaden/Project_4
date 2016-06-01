class ClassmatesController < ApplicationController
  def index
    @classmate = Classmate.all
  end

  def show
    @classmate = Classmate.find(params[:id])
  end

  def new
    @classmate = Classmate.new
  end

  def edit
    @classmate = Classmate.find(params[:id])
  end

  def create
    @classmate = Classmate.new(classmate_params)

    if @classmate.save
      redirect_to @classmate
    else
      render 'new'
    end
  end

  def update
    @classmate = Classmate.find(params[:id])

    if @classmate.update(classmate_params)
      redirect_to @classmate
    else
      render 'edit'
    end
  end
  

  private
    def classmate_params
      params.require(:classmate).permit(:first_name, :last_name, :portfolio_url, :location)
    end

  end
