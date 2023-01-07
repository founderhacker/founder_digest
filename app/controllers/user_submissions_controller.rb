class UserSubmissionsController < ApplicationController
  def create
    user_submission = UserSubmission.new(user_submission_params)
    if user_submission.save
        redirect_to thanks_path
    else
        # if the user submission is not valid show errors
        flash[:error] = user_submission.errors.full_messages.join(', ')
        redirect_to apply_path(plan: user_submission.plan_name)
    end
end

  private

  def user_submission_params
    params.require(:user_submission).permit(:first_name, :last_name, :email, :website, :job_role, :text, :plan_name)
  end
end
