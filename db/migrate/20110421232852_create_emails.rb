class CreateEmails < ActiveRecord::Migration
  def self.up
    create_table :sign_ups do |t|
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :sign_ups
  end
end
