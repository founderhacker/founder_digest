class User < ApplicationRecord
  include Signupable
  include Onboardable
  include Billable

  scope :subscribed, -> { where(paying_customer: true) }
end


# rails generators...
#
# rails g model <command> (creates NEW tables)
# rails g migration <command> (changes to EXISTING tables)
