class AddDiscussionThreadIdToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :discussion_thread_id, :integer
    add_index :messages, :discussion_thread_id
  end
end
