class UserSubmissionsController < ApplicationController
  def create
    UserSubmission.create!(user_submission_params)
    redirect_to thanks_path
  end

  private

  def user_submission_params
    params.require(:user_submission).permit(:first_name, :last_name, :email, :website, :job_role, :text, :plan_name)
  end
end
