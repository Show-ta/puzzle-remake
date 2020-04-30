class AddTagsToNumpres < ActiveRecord::Migration[6.0]
  def change
    add_column :numpres, :tag, :text
    add_column :numpres, :level, :integer
    add_column :numpres, :mark, :integer
  end
end
