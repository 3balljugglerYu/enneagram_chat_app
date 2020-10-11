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

ActiveRecord::Schema.define(version: 2020_10_10_040447) do

  create_table "enneagram_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "type_result_id"
    t.integer "perfectionist_sum"
    t.integer "giver_sum"
    t.integer "achiever_sum"
    t.integer "individualist_sum"
    t.integer "investigator_sum"
    t.integer "skeptic_sum"
    t.integer "enthusiast_sum"
    t.integer "challenger_sum"
    t.integer "peacemaker_sum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
