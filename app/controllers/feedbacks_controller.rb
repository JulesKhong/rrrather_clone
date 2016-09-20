class FeedbacksController < ApplicationController

  def create
    @prompt = Prompt.find(params[:prompt_id])
    @feedback = @prompt.feedbacks.new(feedback_params)
    if @feedback.save
      flash[:notice] = 'Your comment was saved'
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js
      end
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:comment, :username)
  end
end
