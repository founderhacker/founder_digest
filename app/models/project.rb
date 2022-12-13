class Project < ApplicationRecord
  belongs_to :user
  has_many :stakeholder_updates
  has_many :subscribers

  scope :ready, -> { where.not(title: nil).where.not(website: nil).where.not(description: nil) }

  def self.except(project)
    Project.where.not(id: project.id)
  end
end
