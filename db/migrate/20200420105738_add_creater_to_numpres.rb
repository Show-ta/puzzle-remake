class AddCreaterToNumpres < ActiveRecord::Migration[6.0]
  def change
    add_column :numpres, :creater, :string
  end
end
