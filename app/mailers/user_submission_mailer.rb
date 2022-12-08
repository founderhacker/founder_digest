class UserSubmissionMailer < ApplicationMailer
  def reject(user_submission)
    @name = user_submission.name
    mail(to: user_submission.email, subject: "Sorry, you were rejected")
  end

  def accept(user_submission, password)
    @name = user_submission.name
    @email = user_submission.email
    @password = password

    mail(to: user_submission.email, subject: "Congrats, you were accepted")
  end
end
