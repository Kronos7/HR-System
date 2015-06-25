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

ActiveRecord::Schema.define(version: 20140617100753) do

  create_table "birims", force: true do |t|
    t.string   "icerik"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calisma_seklis", force: true do |t|
    t.string   "icerik"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "etkinlik_bilgisis", force: true do |t|
    t.integer  "personel_id"
    t.date     "baslangic"
    t.date     "bitis"
    t.boolean  "etkinlik"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "is_bilgisis", force: true do |t|
    t.integer  "personel_id"
    t.string   "calisma_sekli"
    t.integer  "haftalik_saat"
    t.string   "unvan"
    t.string   "birim"
    t.string   "lokasyon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lokasyons", force: true do |t|
    t.string   "icerik"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personel_karts", force: true do |t|
    t.integer  "personel_id"
    t.string   "isim"
    t.string   "soyisim"
    t.integer  "tc_kimlik"
    t.date     "dogum_tarihi"
    t.string   "baba_adi"
    t.string   "anne_adi"
    t.integer  "ehliyet_no"
    t.string   "lise"
    t.string   "universite"
    t.integer  "cep_no"
    t.integer  "ev_no"
    t.text     "adres"
    t.text     "proje_bil"
    t.text     "sinav_bil"
    t.text     "bilgisayar_bil"
    t.string   "kan_gr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personel_karts", ["tc_kimlik"], name: "index_personel_karts_on_tc_kimlik", unique: true

  create_table "personels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unvans", force: true do |t|
    t.string   "icerik"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
