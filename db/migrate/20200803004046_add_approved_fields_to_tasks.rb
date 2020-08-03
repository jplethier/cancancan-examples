class AddApprovedFieldsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :approved, :boolean
    add_column :tasks, :approved_at, :datetime
    add_reference :tasks, :approver, foreign_key: { to_table: :users }
  end
end
