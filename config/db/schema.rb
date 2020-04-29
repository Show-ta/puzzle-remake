# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_23_135228) do

  create_table "element_as", force: :cascade do |t|
    t.integer "a_a"
    t.integer "a_b"
    t.integer "a_c"
    t.integer "a_d"
    t.integer "a_e"
    t.integer "a_f"
    t.integer "a_g"
    t.integer "a_h"
    t.integer "a_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_bs", force: :cascade do |t|
    t.integer "b_a"
    t.integer "b_b"
    t.integer "b_c"
    t.integer "b_d"
    t.integer "b_e"
    t.integer "b_f"
    t.integer "b_g"
    t.integer "b_h"
    t.integer "b_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_cs", force: :cascade do |t|
    t.integer "c_a"
    t.integer "c_b"
    t.integer "c_c"
    t.integer "c_d"
    t.integer "c_e"
    t.integer "c_f"
    t.integer "c_g"
    t.integer "c_h"
    t.integer "c_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_ds", force: :cascade do |t|
    t.integer "d_a"
    t.integer "d_b"
    t.integer "d_c"
    t.integer "d_d"
    t.integer "d_e"
    t.integer "d_f"
    t.integer "d_g"
    t.integer "d_h"
    t.integer "d_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_es", force: :cascade do |t|
    t.integer "e_a"
    t.integer "e_b"
    t.integer "e_c"
    t.integer "e_d"
    t.integer "e_e"
    t.integer "e_f"
    t.integer "e_g"
    t.integer "e_h"
    t.integer "e_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_fs", force: :cascade do |t|
    t.integer "f_a"
    t.integer "f_b"
    t.integer "f_c"
    t.integer "f_d"
    t.integer "f_e"
    t.integer "f_f"
    t.integer "f_g"
    t.integer "f_h"
    t.integer "f_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_gs", force: :cascade do |t|
    t.integer "g_a"
    t.integer "g_b"
    t.integer "g_c"
    t.integer "g_d"
    t.integer "g_e"
    t.integer "g_f"
    t.integer "g_g"
    t.integer "g_h"
    t.integer "g_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_hs", force: :cascade do |t|
    t.integer "h_a"
    t.integer "h_b"
    t.integer "h_c"
    t.integer "h_d"
    t.integer "h_e"
    t.integer "h_f"
    t.integer "h_g"
    t.integer "h_h"
    t.integer "h_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "element_is", force: :cascade do |t|
    t.integer "i_a"
    t.integer "i_b"
    t.integer "i_c"
    t.integer "i_d"
    t.integer "i_e"
    t.integer "i_f"
    t.integer "i_g"
    t.integer "i_h"
    t.integer "i_i"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "numpre_id"
  end

  create_table "numpres", force: :cascade do |t|
    t.integer "user"
    t.text "create"
    t.date "published"
    t.text "questionx"
    t.text "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "ques"
    t.text "number1"
    t.text "number2"
    t.text "number3"
    t.text "number4"
    t.text "number5"
    t.text "number6"
    t.text "number7"
    t.text "number8"
    t.text "number9"
    t.string "creater"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
