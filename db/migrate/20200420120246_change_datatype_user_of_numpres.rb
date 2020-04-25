class ChangeDatatypeUserOfNumpres < ActiveRecord::Migration[6.0]
  def change
    change_column :numpres, :user, :integer
    change_column :numpres, :user_id, :integer
  end
end
