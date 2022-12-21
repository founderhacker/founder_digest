class User < ApplicationRecord
  include Signupable
  include Billable

  scope :subscribed, -> { where(paying_customer: true) }

  has_many :projects, dependent: :destroy
  has_many :subscribers, dependent: :destroy

  has_many :stakeholder_updates, through: :projects

  before_create :generate_auth_code

  def generate_auth_code
    self.auth_code = SecureRandom.hex(20)
  end

  def default_project
    projects.order(created_at: :asc).first
  end

  def name
    "#{first_name} #{last_name}"
  end

  def finished_onboarding?
    stripe_subscription_id?
  end
end

# rails generators...
#
# rails g model <command> (creates NEW tables)
# rails g migration <command> (changes to EXISTING tables)
