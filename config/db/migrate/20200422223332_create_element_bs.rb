class CreateElementBs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_bs do |t|
      t.integer :b_a
      t.integer :b_b
      t.integer :b_c
      t.integer :b_d
      t.integer :b_e
      t.integer :b_f
      t.integer :b_g
      t.integer :b_h
      t.integer :b_i

      t.timestamps
    end
  end
end
