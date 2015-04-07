# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150407180210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string  "ingredient"
    t.boolean "pint",       default: false
    t.boolean "cup",        default: false
    t.boolean "half_cup",   default: false
    t.boolean "tablespoon", default: false
    t.boolean "teaspoon",   default: false
    t.boolean "pinch",      default: false
  end

  create_table "notes", force: :cascade do |t|
    t.text "body"
  end

  create_table "recipes", force: :cascade do |t|
    t.string  "name"
    t.integer "cooktime"
    t.text    "instructions"
    t.string  "pairings"
  end

  create_table "recipes_categories", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "category_id"
  end

  create_table "recipes_ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
  end

end
