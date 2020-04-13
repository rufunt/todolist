class Task < ApplicationRecord
  belongs_to :project

  validates_presence_of :content
  
  def completed?
    !completed_at.blank?
  end
end
