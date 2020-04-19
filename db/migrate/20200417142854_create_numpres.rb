class CreateNumpres < ActiveRecord::Migration[6.0]
  def change
    create_table :numpres do |t|
      t.string :user
      t.text :create
      t.date :published
      t.text :questionx
      t.text :title
      t.timestamps
    end
  end
end
