class Task < ApplicationRecord
  belongs_to :user
  belongs_to :approved, optional: true, class_name: "User"

  validates :title, :description, presence: true

  def approve(approved_by)
    update(approved: true, approver: approved_by, approved_at: Time.zone.now)
  end

  def reprove
    update(approved: false, approver: nil, approved_at: nil)
  end
end
