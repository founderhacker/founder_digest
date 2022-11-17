class User < ApplicationRecord
  include Signupable
  include Onboardable
  include Billable

  scope :subscribed, -> { where(paying_customer: true) }

  has_many :projects
  has_many :subscribers

  has_many :stakeholder_updates, through: :projects
end

# rails generators...
#
# rails g model <command> (creates NEW tables)
# rails g migration <command> (changes to EXISTING tables)
