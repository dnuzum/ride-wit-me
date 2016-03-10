class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :provider_id
      t.string :provider_hash
      t.string :email
      t.string :name
      t.text :about
      t.text :favorite

      t.timestamps null: false
    end
  end
end
