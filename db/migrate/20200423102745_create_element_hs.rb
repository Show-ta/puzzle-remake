class CreateElementHs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_hs do |t|
      t.integer :h_a
      t.integer :h_b
      t.integer :h_c
      t.integer :h_d
      t.integer :h_e
      t.integer :h_f
      t.integer :h_g
      t.integer :h_h
      t.integer :h_i

      t.timestamps
    end
  end
end
