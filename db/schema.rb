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

ActiveRecord::Schema.define(version: 2020_09_08_140147) do

  create_table "answers", force: :cascade do |t|
    t.string "answer"
    t.integer "Question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Question_id"], name: "index_answers_on_Question_id"
  end

  create_table "contents", force: :cascade do |t|
    t.string "description"
    t.string "videos"
    t.string "music"
    t.string "facts"
    t.string "images"
    t.integer "Game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Game_id"], name: "index_contents_on_Game_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "question_id"
    t.integer "content_id"
    t.integer "Test_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Test_id"], name: "index_games_on_Test_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "true_answer_id"
    t.integer "Game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Game_id"], name: "index_questions_on_Game_id"
  end

  create_table "test_scores", force: :cascade do |t|
    t.integer "User_id", null: false
    t.integer "Test_id", null: false
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Test_id"], name: "index_test_scores_on_Test_id"
    t.index ["User_id"], name: "index_test_scores_on_User_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "testname"
    t.integer "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "favorite_game"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "answers", "Questions"
  add_foreign_key "contents", "Games"
  add_foreign_key "games", "Tests"
  add_foreign_key "questions", "Games"
  add_foreign_key "test_scores", "Tests"
  add_foreign_key "test_scores", "Users"
end
