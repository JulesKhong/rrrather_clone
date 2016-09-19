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

      flash[:notice] = 'Prompt was saved'
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def destroy
    @prompt = Prompt.find(params[:id])
    @prompt.destroy
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js
    end
  end

  def update
    @prompt = Prompt.find(params[:id])
    if params[:vote] = "Option A"
      @prompt.votesA += 1
    else
      @prompt.votesB += 1
    end
    @prompt.save
    respond_to do | format |
      format.html { redirect_to prompts_path }
      format.js
    end
  end

  private

  def prompt_params
    params.require(:prompt).permit(:optionA, :optionB, :author, :description)
  end
end
