class Subscriber < ApplicationRecord
  belongs_to :project # mom
  belongs_to :user # dad (2 parent objects OK)

  validates_presence_of :user_id, :project_id
end
