class AnswersController < ApplicationController
  def index
    # get all answers for current user
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params.merge(user_id: current_user.id))
    if @answer.valid?
      redirect_to @answer.question
    else
      redirect_to @answer.question, notice: 'error'
    end
  end

  def accept
    @answer = Answer.find(params[:id])
    @answer.accept!
    redirect_to @answer.question
  end

  def unaccept
    @answer = Answer.find(params[:id])
    @answer.unaccept!
    redirect_to @answer.question
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end
end
