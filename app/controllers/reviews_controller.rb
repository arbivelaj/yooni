class ReviewsController < ApplicationController


  def create
    @user = current_user
    @program = Program.find(params[:program_id])
    @review = Review.new(review_params)
    @review.program = @program
    @review.user = @user
    if @review.save
      redirect_to program_path(@program)
    else
      render 'programs/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
