class UserMailer < ApplicationMailer
  def digests(user, stakeholder_updates)
    @stakeholder_updates = stakeholder_updates
    @name = user.first_name
    mail(to: user.email, subject: 'Your founder digests are here')
  end
end
