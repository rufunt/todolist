class Task < ApplicationRecord
  belongs_to :project

  validates_presence_of :content
  validates :content, length: { minimum: 3, maximum: 300 }
  
  def completed?
    !completed_at.blank?
  end
end
