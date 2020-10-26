class Task < ApplicationRecord
  belongs_to :project

  validates_presence_of :content
  validates :content, length: { minimum: 3, maximum: 300 }

  PRIORITIES = [
    ['Later (green)', 1],
    ['Next (yellow)', 2],
    ['Now (red)', 3]
  ]
  
  def completed?
    !completed_at.blank?
  end
end
