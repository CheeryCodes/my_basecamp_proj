class RemoveThreadIdFromMessages < ActiveRecord::Migration[7.1]
  def change
    remove_column :messages, :thread_id, :integer
  end
end
