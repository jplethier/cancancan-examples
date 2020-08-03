class Task < ApplicationRecord
  belongs_to :user
  belongs_to :approved, optional: true, class_name: "User"

  validates :title, :description, presence: true
end
