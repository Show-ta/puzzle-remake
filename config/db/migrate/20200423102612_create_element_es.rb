class CreateElementEs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_es do |t|
      t.integer :e_a
      t.integer :e_b
      t.integer :e_c
      t.integer :e_d
      t.integer :e_e
      t.integer :e_f
      t.integer :e_g
      t.integer :e_h
      t.integer :e_i

      t.timestamps
    end
  end
end
