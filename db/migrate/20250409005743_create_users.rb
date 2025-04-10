class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :profile
      t.string :last_name
      t.string :second_last_name
      t.string :first_name
      t.string :signature

      t.timestamps
    end
  end
end
