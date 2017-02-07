class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new(params.require(:question).permit(:title, :body, :resolved))
    if @question.save
      flash[:notice] = "Question was saved"
      redirect_to @question
    else
      flash[:error] = "There was a problem creating the question, please try again!"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
      flash[:notice] = "Question was updated successfully"
      redirect_to @question
    else
      flash[:error] = "Question was not updated."
      render :edit
    end
  end
  
  def destroy
    @question = Question.find(params[:id])
    
    if @question.destroy
      flash[:notice] = "\" #{@question.title} \" was deleted"
      redirect_to questions_path
    else
      flash[:error] = "There was an error and question was not deleted"
      render :show
    end
  end
end
