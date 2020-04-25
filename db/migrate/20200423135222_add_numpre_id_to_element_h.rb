class AddNumpreIdToElementH < ActiveRecord::Migration[6.0]
  def change
    add_column :element_hs, :numpre_id, :integer
  end
end
