class Project < ApplicationRecord
  has_many :tasks

  validates_presence_of :title, :description
end
