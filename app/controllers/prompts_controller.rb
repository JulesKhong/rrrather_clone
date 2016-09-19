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
    binding
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js
    end
  end



  private

  def prompt_params
    params.require(:prompt).permit(:optionA, :optionB, :author, :description)
  end
end
