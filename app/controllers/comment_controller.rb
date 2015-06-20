class CommentController < ApplicationController
  def create
    @new_comment = Comment.new(comment_params)
    if @new_comment.save
      redirect_to event_path(params[:comment][:event_id])
    else
      render 'new'
    end
  end

  def comment_params
    params.require(:comment).permit(:user_id, :event_id, :message)
  end
end
