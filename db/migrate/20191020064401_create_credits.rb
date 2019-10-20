class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.references      :user, foreign_key: true
      t.integer         :number, null: false
      t.integer         :expiration_date, null: false
      t.integer         :secure_code, null: false
      t.timestamps
    end
  end
end
