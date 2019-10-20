class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string          :first_name, null: false, default: ""
      t.string          :last_name, null: false, default: ""
      t.string          :first_name_kana, null: false, default: ""
      t.string          :last_name_kana, null: false, default: ""
      t.integer         :tel
      t.integer         :postal_code, null: false, default: 1
      t.integer         :prefecture, null: false, default: 1
      t.string          :city, null:false, default: ""
      t.integer         :address_number, null: false
      t.string          :building, null: false, default: ""
      t.text            :introduction
      t.string          :avatar
      t.integer         :birthday, null: false, default: 1
      t.string          :gender, null: false, default: ""
      t.references      :user, foreign_key: true
      t.timestamps
    end
  end
end
