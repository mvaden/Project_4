class ClassmatesController < ApplicationController
  def new
  end

  def create
    render plain: params[:classmate].inspect
  end
end
