class PromptsController < ApplicationController
  def index
    @prompts = Prompt.all
  end

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = Prompt.new(prompt_params)
    if @prompt.save
      flash[:notice] = 'prompt was saved'
      redirect_to root_path
    else
      flash[:alert] = 'prompt was not saved'
      render :new
    end
  end



  private

  def prompt_params
    params.require(:prompt).permit(:optionA, :optionB, :author, :description)
  end
end
