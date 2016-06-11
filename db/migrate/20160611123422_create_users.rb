class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :registration_token
      t.boolean :email_reminders, default: false
      t.boolean :email_updates, default: false
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
