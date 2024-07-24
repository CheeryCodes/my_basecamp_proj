class RemoveThreadIdFromMessages < ActiveRecord::Migration[7.1]
  def change
    if column_exists?(:messages, :thread_id)
      remove_column :messages, :thread_id, :integer
    end
  end
end
