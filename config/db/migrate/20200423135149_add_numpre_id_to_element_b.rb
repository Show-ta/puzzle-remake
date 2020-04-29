class AddNumpreIdToElementB < ActiveRecord::Migration[6.0]
  def change
    add_column :element_bs, :numpre_id, :integer
  end
end
