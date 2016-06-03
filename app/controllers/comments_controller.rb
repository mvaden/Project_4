class CommentsController < ApplicationController
  # def create
  #   @classmate = Classmate.find(params[:classmate_id])
  #   @comment = @classmate.comments.create(comment_params)
  #   redirect_to classmate_path(@classmate)
  # end

  def new
    @comment = Comment.new
    # assigns classmate_id to a comment
    @classmate = Classmate.find(params[:id])
  end
end
