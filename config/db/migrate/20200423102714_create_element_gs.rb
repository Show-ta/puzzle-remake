class CreateElementGs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_gs do |t|
      t.integer :g_a
      t.integer :g_b
      t.integer :g_c
      t.integer :g_d
      t.integer :g_e
      t.integer :g_f
      t.integer :g_g
      t.integer :g_h
      t.integer :g_i

      t.timestamps
    end
  end
end
