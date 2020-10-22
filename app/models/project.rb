class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates_presence_of :title, :description
  validates :title, length: { minimum: 3, maximum: 100 }
  validates :description, length: { minimum: 3, maximum: 300 }
end
