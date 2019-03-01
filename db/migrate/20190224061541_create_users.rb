class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "name"
      t.string "email"
      t.string "username"
      t.string "image_url"
      t.string "password_digest"
      t.boolean "allow_login", default: true
      t.string "allow_login_key"
      t.string "seed"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["username"], name: "index_users_on_username", unique: true

      t.timestamps
    end
  end
end
