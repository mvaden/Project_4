class AddClassmateIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :classmate_id, :integer
  end
end
