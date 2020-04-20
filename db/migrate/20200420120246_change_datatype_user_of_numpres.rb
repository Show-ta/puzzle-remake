class ChangeDatatypeUserOfNumpres < ActiveRecord::Migration[6.0]
  def change
    change_column :numpres, :user, :integer
  end
end
